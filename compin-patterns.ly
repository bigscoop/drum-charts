\version "2.18.2"

\layout {
	indent = 0
}

\header
{
	title="Compin' patterns"
	composer="Peter Retzlaff"
}


ticktock = \drums {
	\tempo 4=120

	\drummode {
		hiwoodblock 4 lowoodblock lowoodblock lowoodblock
	}
}


reps = 4

main = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat volta \reps { cymr4 cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} } %4
			\repeat volta \reps { cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 }
			\repeat volta \reps { cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 }
			\repeat volta \reps { \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 cymr4 } %1
			\break
			
			\repeat volta \reps { cymr4 cymr4 cymr4 cymr4 }
			\repeat volta \reps { \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} } %14
			\repeat volta \reps { cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 } %3
			\repeat volta \reps { cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 } %2
			\break
			
			\repeat volta \reps { \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} } %14
			\repeat volta \reps { cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 }
			\repeat volta \reps { cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 }
			\repeat volta \reps { \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} } %14
			\break

			\repeat volta \reps { cymr4 cymr4 cymr4 cymr4 } %0
			\repeat volta \reps { cymr4 cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} } %4
			\repeat volta \reps { cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 } %2
			\repeat volta \reps { \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} } %14
			\break

			\repeat volta \reps { cymr4 cymr4 \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 } %3
			\repeat volta \reps { \scaleDurations 2/3 { cymr8*2 cymr8} cymr4 cymr4 cymr4 } %1
		}
		
		\new DrumVoice {
			\voiceTwo
%			\hideNotes
 

			\repeat unfold 18 { \repeat volta \reps { hiwoodblock1 } }
%			\unHideNotes
		}

		\new DrumVoice {
			\voiceFour
			\repeat volta \reps { s4 s4 s4 \scaleDurations 2/3 { s8*2 sn8} } %4
			\repeat volta \reps { s4 \scaleDurations 2/3 { s8*2 sn8} s4 s4 }
			\repeat volta \reps { s4 \scaleDurations 2/3 { s8*2 bd8} s4 s4 }
			\repeat volta \reps { \scaleDurations 2/3 { s8*2 sn8} s4 s4 s4 } %1
			
			\repeat volta \reps { s1 }
			\repeat volta \reps { \scaleDurations 2/3 { s8*2 sn8} s4 s4 \scaleDurations 2/3 { s8*2 sn8} } %14
			\repeat volta \reps { s4 s4 \scaleDurations 2/3 { s8*2 sn8} s4 } %3
			\repeat volta \reps { s4 \scaleDurations 2/3 { s8*2 bd8} s4 s4 }
			
			\repeat volta \reps { \scaleDurations 2/3 { s8*2 sn8} s4 s4 \scaleDurations 2/3 { s8*2 bd8} } %14
			\repeat volta \reps { s4 s4 \scaleDurations 2/3 { s8*2 bd8} s4 }
			\repeat volta \reps { s4 \scaleDurations 2/3 { s8*2 sn8} s4 sn4 }
			\repeat volta \reps { \scaleDurations 2/3 { s8*2 bd8} s4 s4 \scaleDurations 2/3 { s8*2 sn8} } %14

			\repeat volta \reps { s4 sn4 s4 s4 }
			\repeat volta \reps { s4 s4 s4 \scaleDurations 2/3 { s8*2 bd8} } %4
			\repeat volta \reps { s4 \scaleDurations 2/3 { s8*2 sn8} s4 bd4 }
			\repeat volta \reps { \scaleDurations 2/3 { s8*2 bd8} s4 s4 \scaleDurations 2/3 { s8*2 bd8} } %14

			\repeat volta \reps { s4 s4 \scaleDurations 2/3 { s8*2 bd8} s4 } %3
			\repeat volta \reps { \scaleDurations 2/3 { s8*2 bd8} s4 s4 s4 } %1
		}
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