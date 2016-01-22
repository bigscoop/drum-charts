%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Handouts"
	subtitle = "02-04 Groove 29, New Orleans 2nd line"
	composer = "Swiss Drum Academy"
	piece = \markup { "from Tommy Igoe book, p. 85" }
}

\tocItem \markup "Groove 29, New Orleans 2nd line"

% endif

% if section=='body':
\include "../common/common-defs.ily"
\include "articulate.ly"

beats = {
	\drummode {
		<<
			\new DrumVoice {
				\voiceOne
				\mark \markup { \hspace #15 \bold "Main" }
				sn16-> sn sn sn-> sn sn sn-> sn \repeat tremolo 4 { sn32-> } sn8 sn16 sn16-> sn8:32
				\break 
		
				\mark \markup { \hspace #15 \bold "Variation A" }
				sn16-> sn sn sn->~ sn sn \repeat tremolo 4 { sn32 } sn16 sn-> sn-> sn sn \repeat tremolo 6 { sn32 } |  
				\break
		
				\mark \markup { \hspace #15 \bold "Variation B" }
				toml16->^"R" sn^"L" sn^"L" toml->^"R" ~ toml sn^"L" toml^"R" toml^"R" sn->^"L" sn^"L" toml->^"R" sn^"L" sn->^"L" toml8-^^"R" \repeat tremolo 4 { sn64 } |
				 
				\break
			}
			
			\new DrumVoice {
				\voiceTwo
				bd8. bd16 r8 bd8 r8 bd8 bd16 bd8.
				\break
				r8 hhp16 bd16 r8 hhp8 r8 <<bd8 hhp8>> r16 bd16 hhp8 |
				\break
				\repeat unfold 2 { hhp8 hhp <<hhp bd>> hhp } hhp
			}
		>>
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
			\unfoldRepeats \articulate {
				\beats
			}
		}
	}
	\midi {
	}
}
% endif
