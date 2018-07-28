%% http://lsr.di.unimi.it/LSR/Item?id=566

% The new @code{add-grace-property}. Thanks David Kastrup.
% see also : http://lilypond.1069038.n5.nabble.com/flam-snippet-not-working-td149310.html

#(define (add-grace-property context-name grob sym val)
   "Set @var{sym}=@var{val} for @var{grob} in @var{context-name}."
   (define (set-prop context)
     (let* ((current (ly:context-property context 'graceSettings))
            (new-settings (append current
                            (list (list context-name grob sym val)))))
       (ly:context-set-property! context 'graceSettings new-settings)))

   (make-apply-context set-prop))

%% Return repeated single notes or chords, depending on @var{print-chord?}
%% If @var{print-chord?} is set @code{#f}, the first written note is taken.
%% The Number of repeats is set by @var{lngth}
%% Only notes are returned. Other stuff like @code{Script}, @code{Fingering}
%% is thrown away.
#(define (grace-from-main-note print-chord? lngth music)
   (let* ((elts (ly:music-property music 'elements))
          (has-duration?
           (lambda (x) (ly:duration? (ly:music-property x 'duration))))
          ;; If the whole chord should be printed catch Notes only.
          ;; If the first written note should be printed catch it.
          ;; Otherwise, don't touch the music.
          (mus (cond ((and (music-is-of-type? music 'event-chord) print-chord?)
                      (make-event-chord (event-chord-notes music)))
                 ((music-is-of-type? music 'event-chord)
                  (first (event-chord-notes music)))
                 (else music)))
          ;; Set duration of note, clear 'articulations.
          (note (map-some-music
                 (lambda (m)
                   (and (has-duration? m)
                        (begin
                         (set! (ly:music-property m 'duration)
                               ;; the notes are 1/8th for flams and 1/16th for drags and ruffs
                               ;; however they go both to midi as 1/16th notes
                               (ly:make-duration (if (> lngth 1) 4 3) 0 1 (if (> lngth 1) 1 2)))
                         (set! (ly:music-property m 'articulations) '())
                         m)))
                 (ly:music-deep-copy mus)))
          (next-note (ly:music-deep-copy note))
          (last-note (ly:music-deep-copy note))
          ;; Create a list of notes for use with (> lngth 1)
          (m-list
           (flatten-list
            (list note
              (make-list (max 0 (- lngth 2)) next-note)
              last-note))))
     ;; Return a single note if (= lngth 1 ).
     ;; Insert Beam for (> lngth 1) and return the result.
     (cond ((= lngth 1 )
            note)
       ((> lngth 1)
        (list-set!  m-list 0
          (begin
           (ly:music-set-property!
            note
            'articulations
            (list (make-music
                   'BeamEvent
                   'span-direction -1)))
           note))
        (list-set!  m-list (- lngth 1)
          (begin
           (ly:music-set-property!
            last-note
            'articulations
            (list (make-music
                   'BeamEvent
                   'span-direction 1)))
           last-note))
        (make-sequential-music m-list))
       ;; fall back
       (else (make-sequential-music '()))
       )))

graceRepeat =
#(define-music-function (parser location chord-repeat? how-much note)
   ((boolean? #f) integer? ly:music?)
   "Return @var{note} preceded by repeated and beamed grace-notes. The number of
  grace-notes is specified by @var{how-much}.
  If @var{note} is a chord the first written note of it is used.
  If @var{chord-repeat?} is specified the whole chord is repeated during
  @code{GraceMusic}"
   #{
     % define the stem length for flam
     \once \override Stem #'length = #4
     % define the stem length for beamed notes
     \once \override Beam.positions = #'(1.9 . 1.9)
     \acciaccatura {  $(grace-from-main-note chord-repeat? how-much note) }
     $note
   #})

flam =
#(define-music-function (parser location music)(ly:music?)
   "Return @var{music} preceded by 1 grace-note"
   #{ \graceRepeat #1 $music #})

drag =
#(define-music-function (parser location music)(ly:music?)
   "Return @var{music} preceded by 2 grace-notes"
   #{ \graceRepeat 2 $music #})

ruff =
#(define-music-function (parser location music)(ly:music?)
   "Return @var{music} preceded by 3 grace-notes"
   #{ \graceRepeat #3 $music #})


#(define drumheads '(
                     (acousticbassdrum () #f -3)
                     (bassdrum () #f -3)
                     (sidestick cross #f 1)
                     (acousticsnare () #f 1)
                     (snare () #f 1)
                     (handclap triangle #f 1)
                     (electricsnare () #f 1)
                     (lowfloortom () #f -4)
                     (closedhihat cross "stopped" 5)
                     (hihat cross #f 5)
                     (highfloortom () #f -2)
                     (pedalhihat cross #f -5)
                     (lowtom () #f -1)
                     (openhihat cross "open" 5)
                     (halfopenhihat xcircle #f 3)
                     (lowmidtom () #f 0)
                     (himidtom () #f 2)
                     (crashcymbala cross #f 7)
                     (crashcymbal cross #f 7)
                     (hightom () #f 3)
                     (ridecymbala cross #f 6)
                     (ridecymbal cross #f 6)
                     (chinesecymbal xcircle #f 6)
                     (ridebell () #f 6)
                     (splashcymbal cross #f 7)
                     (cowbell triangle #f 5)
                     (crashcymbalb cross #f 5)
                     (vibraslap diamond #f 4)
                     (ridecymbalb cross #f 5)
                     ))

