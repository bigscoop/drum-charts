%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Rhytmikbuch"
	subtitle = "04. Achtel Noten"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "04-02" }
}
% endif

% if section=='body':
\include "../common/common-defs.ily"

snarePattern = {
	\drummode {
		sn8 sn8 sn2 sn8 sn8 | sn8 sn8 sn4 sn4 r4 | r2 sn8 sn8 sn8 sn8 | sn8 sn8 r4 sn8 sn8 sn4 |
		\break
		sn2 sn4 sn8 sn8 | sn8 sn8 r4 sn8 sn8 sn8 sn8 | sn8 sn8 sn8 sn8 r2 | sn8 sn8 sn4 r2 |
		\break
		sn8 sn8 r4 r2 | r4 sn8 sn8 r2 | r2 sn8 sn8 r4 | r2 r4 sn8 sn8 |
		\break
		sn4 sn4 sn8 sn8 sn4 | r4 sn8 sn8 sn4 sn8 sn8 | sn2 sn8 sn8 r4 | r4 sn8 sn8 sn8 sn8 sn8 sn8 |
		\break
		sn8 sn8 sn2 sn8 sn8 | sn8 sn8 sn8 sn8 sn2 | r2 r4 sn8 sn8 | sn8 sn8 r4 sn8 sn8 sn8 sn8 |
		\break
		r4 sn8 sn8 sn8 sn8 r4 | sn8 sn8 sn8 sn8 sn8 sn8 r4 | r1 | sn8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 |
		\break
		sn4 sn4 sn2 | sn8 sn8 sn8 sn8 r4 sn8 sn8 | sn1 | sn8 sn8 sn8 sn8 sn8 sn8 r4 |
		\break
		sn4 sn8 sn8 sn2 | sn2 sn2 | sn8 sn8 r4 sn4 sn8 sn8 | r4 sn8 sn8 sn8 sn8 sn8 sn8 |
		\break
		sn1 | sn8 sn8 sn8 sn8 r2 | r4 sn8 sn8 sn8 sn8 sn8 sn8 | sn8 sn8 sn8 sn8 r4 sn8 sn8 |
		\break
		sn2 r2 | sn8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | sn8 sn8 r4 r2 | sn2 r4 sn8 sn8 |
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
		}
		\pageBreak
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
						\repeat unfold 40 { \ticktock }
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
