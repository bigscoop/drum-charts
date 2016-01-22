%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Handouts"
	subtitle = "02-01. Dora exercise"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "02-01" }
}

\tocItem \markup "Dora exercise"

% endif

% if section=='body':
\include "../common/common-defs.ily"


snarePattern = {
	\drummode {
		\dora sn16 sn16 sn16 sn16 sn8 sn8 sn16 sn16 sn8 | sn16 sn16 sn16 sn16 \dora sn8 sn8 sn4 |
		\break
		sn16 sn16 sn8 \dora sn8 sn8 sn8 sn8 | sn16 sn16 sn16 sn16 \dora \dora sn4 |
		\break
		sn8 sn16 sn16 sn8 sn8 \dora sn16 sn16 sn8 | sn8 sn8 sn16 sn16 sn8 sn8 sn16 sn16 sn4 |
		\break
		\dora sn4 sn8 sn16 sn16 sn4 | sn8 sn16 sn16 sn8 sn16 sn16 \dora sn4 |
		\break
		\dora sn8 sn16 sn16 sn16 sn16 sn16 sn16 sn8 sn8 | \dora sn8 sn8 sn16 sn16 sn8 sn4 |
		\break
		sn8 sn16 sn16 sn8 sn16 sn16 sn8 sn8 sn16 sn16 sn8 | sn8 sn8 \dora sn16 sn16 sn16 sn16 sn4 |
		\break
		\dora sn16 sn16 sn16 sn16 sn8 sn16 sn16 sn16 sn16 sn16 sn16 | \dora sn16 sn16 sn16 sn16 sn16 sn16 sn8 sn4 |
		\break
		\dora sn8 sn16 sn16 \dora sn16 sn16 sn8 | sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 \dora sn4 |
		\break
		sn8 sn16 sn16 sn8 sn16 sn16 \dora sn16 sn16 sn8 | sn8 sn16 sn16 sn16 sn16 sn8 \dora sn4 |
		\break
		sn8 sn8 r8 sn8 \dora sn16 sn16 sn16 sn16 | \dora sn8 sn8 r8 sn8 sn4 |
		\break
		sn16 sn16 sn16 sn16 \dora \dora sn16 sn16 sn16 sn16 | \dora \dora sn8 sn16 sn16 sn4 |
		\break

	}
}
% endif

% if section=='bookpart-contents':
\score {
	\drums {
		\new DrumVoice {
			\voiceTwo
			\snarePattern
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
						\repeat unfold 36 { \ticktock }
					}
					\new DrumVoice {
						\voiceTwo
						\snarePattern
					}
				>>
			}
		}
	}
	\midi {
	}
}
% endif
