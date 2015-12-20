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
	piece = \markup { \char ##x266B "04-04" }
}
% endif

% if section=='body':
\include "../common/common-defs.ily"

snarePattern = {
	\drummode {

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
