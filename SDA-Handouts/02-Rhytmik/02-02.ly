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
		<<bd4 cymc4>> r8 bd8 bd4 r8 bd8 | bd8 bd8 r4 r8 bd8 r4 |
		\break

		\mark \markup { \hspace #15 \box \bold "Ostinato C" }
		\repeat unfold 8 { sn16^"R" sn16^"L" }   
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel C" }
		sn16 sn16 sn16-> sn16 sn16-> sn16 sn16 sn16 sn16-> sn16 sn16 sn16 sn16 sn16 sn16-> sn16 |
		sn16 sn16 sn16 sn16 sn16-> sn16 sn16 sn16 sn16 sn16 sn16 sn16 sn16-> sn16 sn16 sn16 |  
		\break

		\mark \markup { \hspace #15 \box \bold "Ostinato D" }
		\tuplet 3/2 { sn8_"R" sn8_"L" sn8_"R" } \tuplet 3/2 { sn8_"L" sn8_"R" sn8_"L" }    
		\tuplet 3/2 { sn8_"R" sn8_"L" sn8_"R" } \tuplet 3/2 { sn8_"L" sn8_"R" sn8_"L" }    
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel D" }
		\tuplet 3/2 { sn8 sn8 sn8-> } \tuplet 3/2 { sn8-> sn8 sn8 } \tuplet 3/2 { sn8-> sn8 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } |
		\tuplet 3/2 { sn8 sn8 sn8 } \tuplet 3/2 { sn8-> sn8 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } \tuplet 3/2 { sn8-> sn8 sn8 }   
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
