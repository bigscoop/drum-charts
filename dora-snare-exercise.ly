\version "2.18.2"

\include "common-defs.ly"

\paper {
	page-count = #1
}

\layout {
	indent = 0
}

\header
{
	title="Dora exercise"
}


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


outPDF = \drummode
{
	<<
%		\new DrumVoice {
%			\voiceOne
%			\repeat unfold 40 { \swingRideBar }
%		}

		\new DrumVoice {
			\voiceTwo
			\snarePattern

		}

	>>
}

outMidi = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat unfold 22 { \ticktock }
		}

		\new DrumVoice {
			\voiceTwo
			\snarePattern

		}

	>>
}


% Layout
\score
{
	\drums
	{
		\tempo 4=70

		\outPDF
		\bar "|."
	}

	\layout
	{
%    \set countPercentRepeats = ##t
%    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
	}
}

% MIDI
% Unfolded repeats are required for MIDI when using multiple voices
\score
{
	\unfoldRepeats
	{

		\drums
		{
			\tempo 4=70
			\ticktock
			\outMidi
		}
	}
	\midi { }
}