\version "2.19.56"

\include "articulate.ly"

\include "common.ily"



\paper {

  #(define fonts
     (set-global-fonts
      #:music "lilyjazz"
      #:brace "lilyjazz"
      #:factor (/ staff-height pt 20)
      ))
  system-system-spacing.basic-distance = #20
  annotate-spacing = ##f
  ragged-last-bottom = ##t
  %  system-system-spacing.padding = #28
  %  system-system-spacing.stretchability = #20
  %  page-count = #2
  %  system-count = #5
}



\layout {
  indent = 0
}

\header
{
  title="Solo, Karpovich"
}

currentTempo = 80
ticktock = \drums {
  \tempo 4=\currentTempo

  \drummode {
    hiwoodblock 8 lowoodblock lowoodblock lowoodblock
  }
}

ticktockIII = \drums {
  \tempo 4=\currentTempo

  \drummode {
    \partial 2. hiwoodblock 8 lowoodblock lowoodblock
  }
}

#(define sjsdrums '(
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
                     (crashcymbala cross #f 6)
                     (crashcymbal cross #f 6)
                     (hightom () #f 3)
                     (ridecymbala cross #f 4)
                     (ridecymbal cross #f 4)
                     (chinesecymbal xcircle #f 6)
                     (ridebell () #f 4)
                     (splashcymbal cross #f 7)
                     (cowbell triangle #f 5)
                     (crashcymbalb cross #f 5)
                     (vibraslap diamond #f 4)
                     (ridecymbalb cross #f 5)
                     ))


phraseA = \drummode {
  \flam sn8. tomh16 r8  toml8 r16 \flam sn8. tomh8 toml8
}

phraseB = \drummode {
  sn4 \drag sn16^> sn8.^> sn4 \drag sn16^> sn8.^>
}

afroClave = \drummode {
  \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { r8 cymr8 cymr8 } \tuplet 3/2 { r8 cymr8 r8 } \tuplet 3/2 { cymr8[ r8 cymr8] }
}

afroClaveBd = \drummode {
  \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { r8 bd8 bd8 } \tuplet 3/2 { r8 bd8 r8 } \tuplet 3/2 { bd8[ r8 bd8] }
}

afroClaveWithSnare = \drummode {
  \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { r8 cymr8 cymr8 } \tuplet 3/2 { sn8 cymr8 r8 } \tuplet 3/2 { cymr8[ r8 cymr8] }
}

soloI = \drums
{

  \set DrumStaff.drumStyleTable = #(alist->hash-table sjsdrums)
  \time 4/4
  <<
    \new DrumVoice {
      \voiceOne
      \slurDown
      %      \override StemTremolo #'slope = #0.5
      %\override StemTremolo #'beam-thickness = #0.3
      %\override StemTremolo #'beam-width = #2
      \override StemTremolo #'Y-offset = #3
      %  \override Beam #'positions = #'(4 . 4)


      \tempo 4=70
      \phraseA
      sn16 sn16 sn16 sn16 sn8 sn16 sn16^> r16 sn16 sn8^> sn4^>
      \phraseA
      sn16 sn16 sn16 sn16 sn16^> sn8^> sn16^> r16 sn16 sn8^> sn16^> sn8.^>
      \break

      \phraseA
      \tuplet 3/2 { \flam sn8 tomh8 toml8 } \tuplet 3/2 { \flam sn8 tomh8 toml8 } \flam sn8 sn8:32^"5str"~sn4^>
      \flam sn8 tomh16 tomh16 r16 toml16 toml8 r16 \flam sn8. tomh16 tomh16 toml16 toml16
      \flam sn8 sn8:32^"5str"~sn16^> sn8^> tomh16 tomh8 sn8:32^"5str"~sn16^> sn8.^>
      \break

      \phraseB
      sn8 sn16 sn16^> r16 sn16 sn8^> sn16 sn8^> sn16 sn4^>
      \phraseB
      \tuplet 3/2 { sn8 sn8 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } \tuplet 6/4 { sn16 sn16 sn16 sn16 sn16 sn16 } \tuplet 6/4 { sn16 sn16 sn16 sn16 sn16 sn16 }
      \break

      \tempo 4=140
      \tuplet 3/2 { cymc8[ r8 cymr8] } \tuplet 3/2 { r8 cymr8 cymr8 } \tuplet 3/2 { r8 cymr8 r8 } \tuplet 3/2 { cymr8[ r8 cymr8] }
      \repeat percent 2 { \afroClave }
      \afroClave

      \repeat percent 3 { \afroClaveWithSnare }
      \tuplet 3/2 { tomh8 tomh8 tomh8 } \tuplet 3/2 { tomh8^>[ r8 toml8] } \tuplet 3/2 { toml8 toml8 toml8 } \tuplet 3/2 { toml8^>[ r8 sn8^>] }

      \break
      \tuplet 3/2 { cymc8[ r8 cymr8] } \tuplet 3/2 { r8 cymr8 cymr8 } \tuplet 3/2 { sn8 cymr8 r8 } \tuplet 3/2 { cymr8[ r8 cymr8] }
      \repeat percent 2 { \afroClaveWithSnare }
      \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { cymr8[ r8 sn8^>] }

      \break
      \tuplet 3/2 { cymc8[ r8 cymr8] } \tuplet 3/2 { r8 cymr8 cymr8 } \tuplet 3/2 { sn8 cymr8 r8 } \tuplet 3/2 { cymr8[ r8 cymr8] }
      \repeat percent 2 { \afroClaveWithSnare }
      \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { cymr8[ r8 cymr8] } \tuplet 3/2 { cymr8[ r8 toml16 tomh16] }

      \tuplet 3/2 { sn8[ r8 sn8] } \tuplet 3/2 { r4 toml16 tomh16 } \tuplet 3/2 { sn8[ r8 sn8] } \tuplet 3/2 { r4 toml16 tomh16 }
      \tuplet 3/2 { sn8 tomh8 toml8 } \tuplet 3/2 { toml8 tomh8 toml8 } \tuplet 3/2 { sn8 tomh8 toml8 } \tuplet 3/2 { toml8 tomh8 toml8 }
      \repeat percent 2 { \tuplet 3/2 { \flam sn4 r4 \flam sn4 } \tuplet 3/2 { \flam sn4 r4 <tomh toml>4 } }


      \break
      <sn cymc>4 r2.
      r1
      \tuplet 3/2 { <sn cymc>4 toml4 toml4 } \tuplet 3/2 { toml4 toml4 toml4 }
      \tuplet 3/2 { toml4 toml4 toml4 } \tuplet 3/2 { toml4 toml4 toml4 }

      \repeat percent 2 { \tuplet 3/2 { <sn toml>4 toml4 <sn toml>4 } \tuplet 3/2 { <sn toml>4 toml4 toml4 } }
      \repeat percent 2 { \tuplet 3/2 { <sn cymc>4 toml4 <sn cymc>4 } \tuplet 3/2 { <sn cymc>4 toml4 toml4 } }

      \break
      \repeat percent 2 { \tuplet 3/2 { <sn cymc>4 toml4 toml4 } \tuplet 3/2 { <sn toml>8 sn8 toml4 toml4 } }
      \repeat percent 2 { \tuplet 3/2 { <sn cymc>4 toml4 toml4 } \tuplet 3/2 { <sn cymc>8 sn8 toml4 toml4 } }

      \break
      \repeat percent 4 { \tuplet 3/2 { <sn cymc>4 toml4 toml4 } \tuplet 3/2 { <sn cymc>8 tomh8 toml4 toml4 } }

      \break
      \tuplet 3/2 { <sn cymc>4 toml8 sn8 toml4 } \tuplet 3/2 { <sn toml>4 toml8 sn8 toml4 }
      \repeat percent 3 { \tuplet 3/2 { sn4 toml8 sn8 toml4 } \tuplet 3/2 { <sn toml>4 toml8 sn8 toml4 } }

      \break
      <sn cymc>4 r2.
      \tuplet 3/2 { tomh8 tomh8 tomh8 } \tuplet 3/2 { tomh8^>[ r8 toml8] } \tuplet 3/2 { toml8 toml8 toml8 } \tuplet 3/2 { toml8^> r4 }


      \break
      \tempo 4=70
      \flam sn16 hho8 \flam sn16 hho8 \flam sn16 hho16 r16 \flam sn16 hho8 \tuplet 3/2 { \flam sn8 tomh8 toml8 }
      cymc8 sn8:32^"5str"~sn8.^> sn16 r16 sn16 sn8 sn4
      hho16 sn8 hho16 sn8 hho16 sn16 r16 hho16 sn8 \tuplet 3/2 { \flam sn8 tomh8 toml8 }
      cymc8 sn8:32^"5str"~sn8.^> sn16 r16 sn16 sn8 sn4



      \phraseA
      \tuplet 3/2 { \flam sn8 tomh8 toml8 } \tuplet 3/2 { \flam sn8 tomh8 toml8 } sn8 sn8:32^"5str"~sn4
      \phraseA
      \tuplet 3/2 { \flam sn8 tomh8 toml8 } \tuplet 3/2 { \flam sn8 tomh8 toml8 } \tuplet 3/2 { cymr8 cymr8 cymr8 } \tuplet 3/2 { cymr8 cymr8 cymr8 }
      cymr4 r2.

      \break



    }
    \new DrumVoice {
      \voiceTwo


      \repeat unfold 48 { hhp4 }

      bd4 r2.
      \repeat percent 2 { r1 }
      r2. \tuplet 3/2 { r4 bd8 }

      \repeat percent 3 { bd4 r2 \tuplet 3/2 { r4 bd8 } }
      r1

      \afroClaveBd
      \repeat percent 2 { \afroClaveBd }
      \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { bd8 r4 }

      \afroClaveBd
      \repeat percent 2 { \afroClaveBd }
      \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { bd8[ r8 bd8] } \tuplet 3/2 { bd8 r4 }

      r1
      r1
      \repeat percent 2 { \tuplet 3/2 { r4 bd4 r4 } \tuplet 3/2 { r4 bd4 r4 } }

      \tuplet 3/2 { hhp4 hhp4 hhp4 } \tuplet 3/2 { hhp4 hhp4 hhp4 }
      \tuplet 3/2 { hhp4 hhp4 hhp4 } \tuplet 3/2 { hhp4 hhp4 hhp4 }
      \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 }
      \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 }

      \repeat percent 2 { \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 } }
      \repeat percent 2 { \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 } }

      \repeat percent 2 { \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 } }
      \repeat percent 2 { \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 } }

      \repeat percent 4 { \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 } }

      \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 }
      \repeat percent 3 { \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8  } \tuplet 3/2 { hhp8 bd8 hhp8 bd8 hhp8 bd8 } }

      r1
      r1

      r16 bd8. bd8. bd16 r8 bd8 r4
      bd1
      bd16 hhp8 bd16 hhp8 bd16 hhp16 r16 bd16 hhp8 r4
      bd1

      \repeat unfold 14 { hhp4 }
      r2
      r1


    }
    \new Dynamics {
      \repeat unfold 11 { s1 }
      s2 s2\< | s1\!
      \repeat unfold 48 { s1 }
      \override Hairpin.to-barline = ##f
      s2 s2\>-"rit."
      s1\!
    }
  >>
  \bar "|."
}

\score {
  \soloI
  \layout { }
}
\score {
  \unfoldRepeats { \soloI }
  \midi { }
}
