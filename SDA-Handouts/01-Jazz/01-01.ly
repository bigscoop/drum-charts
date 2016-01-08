%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Handouts"
	subtitle = "01-01. Jazz Vokabular"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "01-01" }
}

\tocItem \markup "Jazz Vokabular"

% endif

% if section=='body':
\include "../common/common-defs.ily"


reps = 4

main = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat volta \reps { \repeat unfold 14 { \swingRideBar } }
		}
		\new DrumVoice {
			\voiceTwo

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
% endif

% if section=='bookpart-contents':
\score {
	\drums {
		\tempo 4=120
	
		\swingMarkup
	
		\main
		\break
	
		\bar "|."
	}

	\layout { }
}
% endif

% if section=='midi':

\score
{
	\unfoldRepeats
	{
		\drums
		{
			\tempo 4=100
			\ticktock
			\drummode
			{
				<<
					\new DrumVoice {
						\voiceOne
						\repeat unfold 36 { \ticktock }
					}
					\new DrumVoice {
						\voiceTwo
						\main
					}
				>>
			}
		}
	}
	\midi {
	}
}
% endif
