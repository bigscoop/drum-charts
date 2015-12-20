%%{ <%page args='section'/> %%}

% if section=='version':
\version "2.18.2"
% endif

% if section=='header':
\header
{
	title = "SDA Rhytmikbuch"
	subtitle = "Synkopen"
	composer = "Swiss Drum Academy"
	piece = \markup { \char ##x266B "05-02" }
}
% endif

% if section=='body':
\include "../common/common-defs.ily"

\layout {
	indent = 0
}



snarePatternTwelve = {
	\drummode {
		r8 sn8 sn8 sn8 sn2 | sn4 sn8 sn8 r8 sn8 sn8 sn8 | r8 sn8 sn8 sn8 sn8 sn8 r8 sn8 | r4 sn8 sn8 r4 r8 sn8
		\break
		r1 r8 sn8 r8 sn8 r8 sn8 r8 sn8 |  sn8 sn8 sn2 r8 sn8 | r4 sn8 sn8 r8 sn8 sn8 sn8 |
		\break
		r8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | sn2 r4 sn8 sn8 | sn8 sn8 sn8 sn8 sn8 sn8 r8 sn8 | sn1 |
		\break
		sn8 sn8 sn8 sn8 r8 sn8 sn4 | sn8 sn8 r4 r4 r8 sn8 | sn2 r8 sn8 sn4 | r4 sn8 sn8 r2 |
		\break
		sn8 sn8 sn4 sn4 sn4 | sn2 r8 sn8 sn8 sn8 | r8 sn8 sn4 sn4 sn8 sn8 | sn8 sn8 sn8 sn8 r8 sn8 r8 sn8 |
		\break
		sn8 sn8 sn8 sn8 r8 sn8 r8 sn8 | sn1 | sn8 sn8  sn2 r8 sn8 | sn8 sn8 sn4 r8 sn8 sn8 sn8 |
		\break
		sn2 sn8 sn8 r8 sn8 | sn8 sn8 sn4 r4 r8 sn8 | sn8 sn8 sn8 sn8 r2 | sn8 sn8 r8 sn8 sn8 sn8  r4 |
		\break
		r8 sn8 r4 r8 sn8 r8 sn8 | r1 | r8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | r2 r8 sn8 sn4 |
		\break
		sn2 sn8 sn8 r8 sn8 | sn4 sn4 r8 sn8 r4 | sn8 sn8 sn8 sn8 r4 sn8 sn8 | sn8 sn8 r4 sn8 sn8 r8 sn8 |
		\break
		sn8 sn8 sn8 sn8 r8 sn8 sn8 sn8 | sn1 | sn4 r8 sn8 sn8 sn8 sn8 sn8 | sn8 sn8 r8 sn8 sn2|
	}
}

snarePatternThirteen = {
	\drummode {
		sn4 r4 r4 sn8 sn8 | sn8 sn8 r8 sn8 r8 sn8 sn4 | r8 sn8 r8 sn8 sn8 sn8 r8 sn8 | sn2 r4 r8 sn8 |
		\break
		sn8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | r8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | sn8 sn8 r8 sn8 r4 sn8 sn8 | r8 sn8 sn8 sn8 sn2 |
		\break
		sn8 sn8 sn2 r8 sn8 | r8 sn8 sn8 sn8 r2 | sn1 | sn8 sn8 r8 sn8 sn8 sn8 r8 sn8 |
		\break
		sn8 sn8 sn8 sn8 r8 sn8 r4 | r8 sn8 r8 sn8 sn8 sn8 sn4 | sn4 sn4 sn8 sn8 sn8 sn8 | r2 sn8 sn8 sn4 |
		\break
		sn8 sn8 sn8 sn8 r8 sn8 sn8 sn8 | r8 sn8 sn4 sn4 r8 sn8 | sn8 sn8 sn4 r8 sn8 r4 | r2 r8 sn8 sn8 sn8 |
		\break
		sn2 r2 | r8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | sn4 r8 sn8 sn8 sn8 sn8 sn8 | r8 sn8 sn8 sn8 r8 sn8 r4 |
		\break
		sn1 | sn8 sn8 r8 sn8 sn4 sn4 | sn4 sn4 r8 sn8 sn8 sn8 | sn2 r8 sn8 r8 sn8 |
		\break
		sn8 sn8 r4 sn8 sn8 sn4 | r4 r8 sn8 sn8 sn8 r8 sn8 | sn8 sn8 sn8 sn8 sn8 sn8 sn4 | r8 sn8 sn2 r8 sn8 |
		\break
		sn8 sn8 sn8 sn8 sn4 r4 | r8 sn8 sn8 sn8 sn8 sn8 r8 sn8 | r8 sn8 r8 sn8 r8 sn8 r4 | sn8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 |
		\break
		sn8 sn8 r8 sn8 r2 | r4 r8 sn8 r8 sn8 r8 sn8 | r1 | sn8 sn8 sn8 sn8 r8 sn8 sn4 |

	}
}

snarePatternFourteen = {
	\drummode {
		sn4 sn2 sn4 | sn8 sn4 sn4 sn4 sn8 | sn8 sn4 sn8 sn8 sn4 sn8 | sn8 sn8 sn8 sn8 sn4 r4 |
		\break
		sn2 r8 sn8 sn8 sn8 | sn8 sn4 sn4 sn4 sn8 | sn8 sn8 sn2 r8 sn8 | sn8 sn8 sn4 sn8 sn8 r8 sn8 |
		\break
		sn8 sn8 r8 sn8 sn8 sn4 sn8 | sn1 | sn8 sn8 sn8 sn8 sn8 sn4 sn8 | sn8 sn8 r4 r8 sn4 sn8 |
		\break
		sn4 sn2 sn4 | r8 sn8 sn2 r8 sn8 | r2 sn8 sn8 sn8 sn8 | sn4 sn8 sn8 sn8 sn4 sn8 |
		\break
		sn2 r8 sn8 r8 sn8 | sn8 sn8 r4 sn2 | sn8 sn8 sn8 sn8 r4 r8 sn8 | sn8 sn8 sn2 r8 sn8 |
		\break
		sn8 sn4 sn8 r8 sn4 sn8 | sn8 sn8 sn8 sn8 sn8 sn8 sn8 sn8 | sn8 sn8 r4 r2 | sn2 sn8 sn8 r8 sn8 |
		\break
		sn8 sn4 sn4 sn8 sn8 sn8 | sn8 sn8 r4 r2 | sn1 | sn8 sn8 sn8 sn8 r8 sn8 r8 sn8 |
		\break
		sn8 sn4 sn8 r8 sn8 sn8 sn8 | r8 sn8 sn8 sn8 r8 sn4 sn8 | sn8 sn4 sn8 r4 r8 sn8 | sn8 sn8 sn2 sn8 sn8 |
		\break
		r1 | r8 sn4 sn8 sn8 sn4 sn8 | sn8 sn8 sn2 r8 sn8 | sn8  sn4 sn8 sn8 sn8 r8 sn8 |
		\break
	}
}

snarePatternFifteen = {
	\drummode {
		sn8 sn8 sn4 sn8 sn4 sn8 | sn8 sn4 sn8 sn8 sn4 sn8 | r4 sn8 sn8 sn8 sn4 sn8 | sn2 sn8 sn4 sn8 |
		\break
		r2 sn4 r4 | sn8 sn8 sn2 sn8 sn8 | r8 sn4 sn4 sn4 sn8 | r8 sn4 sn8 sn8 sn8 r4 |
		\break
		sn8 sn4 sn8 r8 sn4 sn8 | r8 sn8 sn2 sn8 sn8 | sn4 sn4 sn8 sn4 sn8 | sn1 |
		\break
		sn8 sn8 sn8 sn8 sn8 sn4 sn8 | sn8 sn4 sn8 r4 r8 sn8 | r8 sn4 sn8 sn8 sn4 sn8 | sn8 sn4 sn4 sn4 sn8 |
		\break
		sn8 sn4 sn4 sn4 sn8 | r8 sn4 sn8 sn8 sn8 r8 sn8 | sn8 sn8 sn2 r4 | r8 sn8 sn4 r8 sn8 r8 sn8 |
		\break
		r8 sn8 r4 r8 sn4 r8 | sn8 sn8 r4 r8 sn8 r4 | r8 sn8 r4 r4 r8 sn8 | r2 r8 sn8 sn4 |
		\break
		sn8 sn4 sn8 sn8 sn4 sn8 | sn4 sn4 sn8 sn4 sn8 | sn8 sn8 r4 r4 r8 sn8 | r8 sn8 sn4 r2 |
		\break
		sn8 sn8 sn8 sn8 r8 sn4 sn8 | sn8 sn4 sn4 sn8 sn8 sn8 | r4 sn8 sn8 sn4 sn8 sn8 | r8 sn8 sn8 sn8 sn8 sn4 sn8 |
		\break
		sn2 sn2 | sn8 sn 4 sn8 r8 r4 sn8 | r8 sn4 sn8 sn8 sn4 sn8 | sn1
		\break
		r8 sn8 sn4 sn8 sn4 sn8 | r8 sn8 sn2 r8 sn8 | sn8 sn4 sn8 r8 sn8 sn8 sn8 | sn8 sn8 r4 sn2
		\break
	}
}

bdPattern = {
	\drummode {
		\repeat unfold 156 { bd4 }
		\scaleDurations 2/3 { bd8*2 bd4 s8 bd8 s2 s4 }
	}

}

outPDFAchtelNoten = \drummode
{
	\set Score.barNumberVisibility = #all-bar-numbers-visible
	\new DrumVoice {
		\voiceTwo
		\snarePatternTwelve

	}

	\pageBreak

	\set Score.currentBarNumber = 1
	\new DrumVoice {
		\voiceTwo
		\snarePatternThirteen
	}

	\pageBreak

}

outPDFSynkopen = \drummode
{
	\set Score.barNumberVisibility = #all-bar-numbers-visible
	\new DrumVoice {
		\voiceTwo
		\snarePatternFifteen
		\pageBreak
	}
}

% endif

% if section=='bookpart-contents':

		\score {
			\drums {
					\outPDFSynkopen
					\bar "|."
				}

				\layout
				{
			}
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
								\snarePatternFifteen
							}
						>>
					}
				}
			}
			\midi {
			}
		}
% endif
