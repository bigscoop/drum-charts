%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Handouts"
	subtitle = "01-02. Syncopation Set 2"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "01-02" }
}

\tocItem \markup "Syncopation Set 2"

% endif

% if section=='body':
\include "../common/common-defs.ily"


reps = 4

main = \drummode
{
	<<
%%		\new DrumVoice {
%%			\voiceOne
%%			\repeat volta \reps { \repeat unfold 28 { \swingTheme } }
%%		}
		\new DrumVoice {
			\voiceOne

			\repeat unfold \reps { \scaleDurations 2/3 { sn8*2 sn4 s8 sn8 sn4 s8 sn4 s8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn4 s8 sn8*2 sn4 s8 sn8 sn4 s8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn4 s8 sn4 s8 sn8*2 sn4 s8 sn8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn8*2 sn4 s8 sn8 sn8*2 sn4 s8 sn8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn8*2 sn4 s8 sn4 s8 sn4 s8 sn8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { r8*2 sn4 s8 sn8 sn4 s8 sn4 s8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn4 s8 sn4 s8 r8*2 sn4 s8 sn8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { r8*2 sn4 s8 r8 r8*2 sn4 s8 r8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn4 s8 r8*2 sn4 s8 sn8 sn4 s8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { r8*2 sn4 s8 sn4 s8 sn4 s8 r8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { r8*2 sn4 s8 r8 sn4 s8 sn4 s8 } }
			\break
			\repeat unfold \reps { \scaleDurations 2/3 { sn4*3/2 sn4*3/2 r8*2 sn4*3/2 r8 } }
			\break

		}

		\new DrumVoice {
			\voiceFour
			\repeat unfold \reps { \repeat unfold 48 { bd4 } }
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
