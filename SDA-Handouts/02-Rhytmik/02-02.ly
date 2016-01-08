%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Handouts"
	subtitle = "02-02. Bassdrum part"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "02-02" }
}

\tocItem \markup "Bassdrum part"

% endif

% if section=='body':
\include "../common/common-defs.ily"


bdPattern = {
	\drummode {
		<<bd4 cymc4>> r8 bd8 bd4 r8 bd8 | bd8 bd8 r4 r8 bd8 r4 |
		\break
		r8 bd8 r4 bd8. bd16 r4 | r16 bd8 bd16 r8 bd8 r8 bd8 r4 |
		\break
		<<bd4 cymc4>> r8 bd8 r16 bd8. r4 | bd8. bd16 r8 bd8 bd4 r8 bd8 |
		\break
		bd8 bd8 r8 bd8 r16 bd8 bd16 r4 | bd4 bd4 bd4 bd8. bd16 |
		\break
		<<bd4 cymc4 >> r8 bd8 bd8 bd8 r16 bd8. | r4 bd8 bd8 bd8. bd16 r4 |
		\break
		bd8 bd8 bd8. bd16 r4 bd8 bd8 | bd8. bd16 r4 bd8 bd8 bd8. bd16 |
		\break
		<<bd8. cymc8.>> bd16 r8 bd8 r16 bd8 bd16 r8. bd16 | r8 bd8 r4 r16 bd8 bd16 r8 bd8 |
		\break
		bd8. bd16 r8 bd8 bd8. bd16 r8. bd16 | bd8 bd8 r16 bd8. r8 bd8 <<bd4 sn4 cymc4>> |
		\break
	}
}
% endif

% if section=='bookpart-contents':
\score {
	\drums {
		\new DrumVoice {
			\voiceOne
			\bdPattern
			\pageBreak
		}
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
						\repeat unfold 16 { \ticktock }
					}
					\new DrumVoice {
						\voiceTwo
						\bdPattern
					}
				>>
			}
		}
	}
	\midi {
	}
}
% endif
