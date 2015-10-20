\version "2.18.2"

\paper {
  page-count = #2
}

\layout {
	indent = 0
}

\header
{
	title="Lesson Six"
	subtitle="Playing eighth-note triplets and quarter notes."
}


ticktock = \drums {
		\tempo 4=120

	\drummode {
		hiwoodblock 4 lowoodblock lowoodblock lowoodblock
	}
}


swingTheme = \drummode
{
	cymr4 \scaleDurations 2/3 { cymr8*2 cymr8}
}

triplet = \drummode {
	\times 2/3 { sn8 sn8 sn8 }
}

reps = 4

main = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat unfold \reps { \repeat unfold 38 { \swingTheme } }
		}
		\new DrumVoice {
			\voiceTwo

%      \scaleDurations 2/3 { cymr8*2 cymr8 cymr8*2 cymr8 cymr8*2 cymr8 cymr8*2 cymr8 }
			\repeat unfold \reps { \triplet sn4 sn4 sn4 }
			\break
			\repeat unfold \reps { sn4 \triplet sn4 sn4 }
			\break
			\repeat unfold \reps { sn4 sn4 \triplet sn4 }
			\break
			\repeat unfold \reps { sn4 sn4 sn4 \triplet }
			\break

			\repeat unfold \reps { \triplet \triplet sn4 sn4 }
			\break
			\repeat unfold \reps { sn4 \triplet \triplet sn4 }
			\break
			\repeat unfold \reps { sn4 sn4 \triplet \triplet }
			\break

			\repeat unfold \reps { sn4 \triplet \triplet \triplet }
			\break
			\repeat unfold \reps { \triplet \triplet \triplet sn4 }
			\break

			\repeat unfold \reps { \triplet \triplet \triplet \triplet }
			\break

			\repeat unfold \reps { sn4 \triplet sn4 \triplet }
			\break
			\repeat unfold \reps { \triplet sn4 \triplet sn4 }
			\break
			\repeat unfold \reps { \triplet sn4 sn4 \triplet }
			\break

			\repeat unfold \reps { \triplet sn4 \triplet \triplet }
			\break
			\repeat unfold \reps { \triplet \triplet sn4 \triplet }
			\break
			
%			bar
			\mark "Bar exercise"
			sn4 sn4 sn4 \triplet sn4 sn4 \triplet sn4 \triplet \triplet \triplet sn4 sn4 \triplet sn4 \triplet
			\break
			\triplet \triplet sn4 \triplet \triplet sn4 sn4 \triplet \triplet sn4 \triplet \triplet sn4 \triplet sn4 sn4
			\break
			\triplet sn4 sn4 sn4 sn4 \triplet \triplet sn4 \triplet sn4 \triplet sn4 \triplet \triplet \triplet \triplet 
			\break
			sn4 \triplet \triplet \triplet sn4 sn4 \triplet \triplet \triplet \triplet sn4 sn4 \triplet \triplet sn4 r4

		}

%		\new DrumVoice {
%			\voiceFour
%			\repeat unfold \reps { \repeat unfold 48 { bd4 } }
%		}
	>>
}


swing = \mark \markup {
	\hspace #15
	\line \general-align #Y #DOWN { \score {
	\new Staff \with {
		fontSize = #-2
		\override StaffSymbol #'line-count = #0
		\override VerticalAxisGroup #'Y-extent = #'(0 . 0)
	}
	\relative {
		\stemUp
		\override Score.SpacingSpanner
			#'common-shortest-duration = #(ly:make-moment 3 16)
		\override Beam #'positions = #'(2.5 . 2.5)
		b'8[ b8]
	}
	\layout {
		ragged-right= ##t
		indent = 0
		\context {
		\Staff \remove "Clef_engraver"
		\remove "Time_signature_engraver" }
	}} " ="
	\score { \new Staff \with {
		fontSize = #-2
		\override StaffSymbol #'line-count = #0
		\override VerticalAxisGroup #'Y-extent = #'(0 . 0)
	}
	\relative {
		\stemUp
		\override Score.SpacingSpanner
			#'common-shortest-duration = #(ly:make-moment 3 16)
		\override Beam #'positions = #'(2.5 . 2.5)
		\times 2/3 { b'8[ r b8] }
	}
	\layout {
		ragged-right= ##t
		indent = 0
		\context {
			\Staff
			\remove "Clef_engraver"
			\remove "Time_signature_engraver" }
		}}
	\fontsize #-2
	\italic { "  swing" }
	}
}



song =
\drums
{
	\tempo 4=120

	\swing

	\main
	\break

	\bar "|."
}

% Layout
\score
{
	\song

	\layout
	{
%    \set countPercentRepeats = ##t
%    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
	}
}

% MIDI
% Unfolded repeats are required for MIDI when using multiple voices
\score
{
	\unfoldRepeats
	{
		\ticktock
		\song
	}
	\midi { }
}