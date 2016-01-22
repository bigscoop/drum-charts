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
	piece = \markup { "from EYS Stufe 6, p. 52" }
}

\tocItem \markup "Bassdrum part"

% endif

% if section=='body':
\include "../common/common-defs.ily"


ostinatis = {
	\drummode {
		\mark \markup { \hspace #15 \box \bold "Ostinato A" }
		\repeat unfold 2 { hh4 <<hh4 sn4>> }   
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel A" }
		<<bd4 cymc4>> <<hh8 sn8>> bd8 <<bd4 hh4>> <<hh8 sn8 >> bd8 | 
		<<bd8 hh8>> bd8 <<hh4 sn4>> hh8 bd8 <<hh4 sn4>> |
		\break

		\mark \markup { \hspace #15 \box \bold "Ostinato B" }
		\repeat unfold 2 { hh8 hh8 <<hh8 sn8>> hh8 }   
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel B" }
		<<bd8 cymc>> hh <<hh sn>> <<hh bd>> <<hh bd>> hh <<hh sn>> <<hh bd>> | 
		<<hh bd>> <<hh bd>> <<hh sn>> hh hh <<hh bd>> <<hh sn>> hh |
		\break

		\mark \markup { \hspace #15 \box \bold "Ostinato C" }
		r8 hh sn hh r hh sn hh |    
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel C" }
		<<bd8 cymc>> hh sn <<hh bd>> bd hh sn <<hh bd>> | 
		bd <<hh bd>> sn hh r <<hh bd>> sn hh |
		\break

		\mark \markup { \hspace #15 \box \bold "Ostinato D" }
		\repeat unfold 2 { hh16^"R" hh16^"L" hh16^"R" hh16^"L" sn16^"R" hh16^"L" hh16^"R" hh16^"L" }   
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel D" }
		<<cymc16 bd>> hh hh hh sn hh <<hh bd>> hh <<hh bd>> hh hh hh sn hh <<hh bd>> hh |
		<<hh bd>> hh <<hh bd>> hh sn hh hh hh hh hh <<hh bd>> hh sn hh hh hh |
		\break
	}
}

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
			\ostinatis
			\pageBreak
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
