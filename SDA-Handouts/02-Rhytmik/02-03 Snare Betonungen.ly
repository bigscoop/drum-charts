%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Handouts"
	subtitle = "02-03. Snare Betonungen"
	composer = "Swiss Drum Academy"
	piece = \markup { "from EYS Stufe 6, p. 54" }
}

\tocItem \markup "Snare Betonungen"

% endif

% if section=='body':
\include "../common/common-defs.ily"

ostinatis = {
	\drummode {
		\mark \markup { \hspace #15 \box \bold "Ostinato A" }
		\repeat unfold 4 { sn8^"R" sn8^"L" }   
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel A" }
		sn8 sn8-> sn8-> sn8 sn8-> sn8 sn8 sn8-> | sn8 sn8 sn8-> sn8 sn8 sn8 sn8-> sn8 |  
		\break

		\mark \markup { \hspace #15 \box \bold "Ostinato B" }
		\repeat unfold 4 { sn8:16^"RR" sn8:16^"LL" } 
		\break 
		\mark \markup { \hspace #15 \bold "Beispiel B" }
		sn16 sn16 sn8-> sn8-> sn16 sn16 sn8-> sn16 sn16 sn16 sn16 sn8-> | sn16 sn16 sn16 sn16 sn8-> sn16 sn16 sn16 sn16 sn16 sn16 sn8-> sn16 sn16 |  
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

snarePattern = {
	\drummode {
		r8 sn8 sn4 sn4 r8 sn8 | r4 sn4 r4 sn4 | 
		\break
		r8 sn8 r8 sn8 r8 sn8 r8 sn8 | sn4 sn4 r8 sn8 r8 sn8 |
		\break
		sn4 r8 sn8 sn4 r8 sn8 | r2 sn4 sn4 |
		\break
		r8 sn8 r4 sn8 sn4 sn8 | r8 sn8 r4 sn4 r8 sn8 |
		\break
		r8 sn8 r4 r8 sn8 r4 | r8 sn8 sn4 r8 sn8 r8 sn8 |
		\break
		r4 sn4 sn4 r8 sn8 | sn4 sn4 sn2 |
		\break
		r8 sn8 r8 sn8 r4 sn4 | sn4 r8 sn8 r4 sn4 |
		\break
		sn2 sn4 r8 sn8 | r4 sn4 r4 sn4 |
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
						\repeat unfold 16 { \ticktock }
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
