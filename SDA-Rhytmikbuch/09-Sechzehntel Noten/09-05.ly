%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Rhytmikbuch"
	subtitle = "09. Sechzehntel Noten"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "09-05" }
}

\tocItem \markup "09. Sechzehntel Noten"

% endif

% if section=='body':
\include "../common/common-defs.ily"
snarePattern = {
	\drummode {
		\repeat unfold 16 { sn16 } | sn16 sn16 sn8 sn16 sn8. sn16 sn16 sn16 sn16 sn4 | r16 sn16 sn16 sn16 sn4 sn8 sn16 sn16 r8 sn16 sn16 |
		\break
		sn4 sn16 sn16 sn16 sn16 \ra sn16 sn16 sn16 sn16 | sn2 sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 | \dora \ora sn8 sn8 sn16 sn16 sn16 sn16 |
		\break
		r8 sn16 sn16 r16 sn16 sn8 sn4 sn8 sn16 sn16 | sn16 sn8. \brd sn16 sn16 sn16 sn16 sn4 | sn16 sn16 sn16 sn16 sn2 r16 sn16 sn16 sn16 |
		\break
		sn8 sn8 r8 sn16 sn16 \brd  sn16 sn16 sn8 | \dora sn16 sn16 sn16 sn16 \ora \ra | sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 \brd sn4 |
		\break
		r2 r16 sn16 sn8 \brd | r4 \dora sn16 sn8. r8 sn16 sn16 | sn16 sn16 sn16 sn16 \dora r16 sn8 sn16 \ra |
		\break
		sn16 sn16 sn8 sn8 sn16 sn16 sn8 sn16 sn16 r16 sn8. | sn16 sn8. r8 sn8 r16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 | \brd sn8 sn16 sn16 sn2 |
		\break
		\dora sn8 sn16 sn16 r16 sn16 sn8 sn16 sn16 r16 sn16 | \brd r8 sn8 r16 sn8. sn4 | r16 sn8. r16 sn8. \brd r8. sn16 |
		\break
		sn16 sn16 sn16 sn16 sn4 r16 sn8 sn16 sn8 sn8 sn8 sn8 sn16 sn8. sn8 sn16 sn16 sn16 sn16 sn8 | sn4 sn16 sn16 sn16 sn16 sn8 sn8 r16 sn16 sn8 |
		\break
		sn4 sn2 r16 sn16 sn16 sn16 | sn16 sn8. r16 sn8. \brd \ra | r8 sn16 sn16 sn8 sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16 |
		\break
		\dora \ora \ora \ora | sn4 r16 sn16 sn16 sn16 r16 sn16 sn16 sn16 r8. sn16 | sn2 r8 sn8 sn16 sn16 sn16 sn16 |
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
			\tempo 4=80
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