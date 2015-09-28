\version "2.16.0"


\header
{
	title="Jazz Vokabular"
	composer=""
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

reps = 4

main = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat volta \reps { \repeat unfold 28 { \swingTheme } }
		}
		\new DrumVoice {
			\voiceTwo

%      \scaleDurations 2/3 { cymr8*2 cymr8 cymr8*2 cymr8 cymr8*2 cymr8 cymr8*2 cymr8 }
			\repeat volta \reps { \repeat unfold 2 { sn2 } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { r8*2 sn8 r8*2 r8 } } }
			\repeat volta \reps { \repeat unfold 2 { r4 sn4 } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { r8*2 r8 r8*2 sn8 } } }
			\repeat volta \reps { \repeat unfold 2 { sn4 sn4 } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { r8*2 sn4 r8 sn8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 r8*2 r8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { r8*2 sn8 sn8*2 r8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { r8*2 r8 sn8*2 sn8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 r8 r8*2 sn8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { sn4 r8 sn8*2 sn8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 sn8*2 r8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 r8*2 sn8 } } }
			\repeat volta \reps { \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 sn8*2 sn8 } } }
		}
	>>
}


swing = \mark \markup {
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