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
	title="Exercise one"
	subtitle="Snare-bass drum patterns."
}


snarePattern = {
	\drummode {
		\scaleDurations 2/3 { 
			sn8*2 bd4 s8 sn8 bd4 s8 bd4 s8 | bd4 s8 bd4 s8 r8 s8 bd4 s8 sn8 | bd4 s8 bd4 s8 sn8*2 bd4 s8 sn8 | sn8*2 bd4 s8 sn8 bd4 s8 r4 s8 |
			\break
			
			sn8*2 bd4 s8 sn8 sn8 *2 bd4 s8 sn8 | bd4 s8 sn8*2 sn8 ~ sn8*2 sn8 bd4 s8 | r8 s8 bd4 s8 sn8 bd4 s8 bd4 s8 | r8 s8 bd4 s8 sn8 bd4 s8 r8 s8 sn8 |
			\break
			
			bd4 s8 bd4 s8 r8 s8 bd4. s8 | r8 s8 bd4. s8 sn8*2 bd4 s8 sn8 | sn8*2 bd4 s8 bd4 s8 bd4 s8 sn8 | r8 s8 bd4 s8 bd4 s8 bd4 s8 r8 |
			\break
			
			bd4 s8 bd4 s8 sn8*2 bd4 s8 sn8 | sn8*2 bd4 s8 sn8 sn8*2 bd4 s8 sn8 | r8 s8 bd4 s8 r8 bd4 r8 bd4 r8 | bd4 s8 r8 s8 sn8 ~ sn8*2 sn8 bd4 s8 |
			\break
			
			r8 s8 bd4 s8 r8 r8 s8 bd4 s8 r8 | r8 s8 bd4. s8 sn8*2 bd4 s8 sn8 | bd4 s8 sn8*2 sn8 ~ sn8*2 sn8 bd4 s8 | sn8*2 bd4 s8 sn8 bd4 s8 bd4 s8 |
			\break
			
			bd4 s8 bd4 s8 sn8*2 bd4 s8 sn8 | r8 s8 bd4 s8 sn8 r8 s8 bd4 s8 sn8 | bd4 s8 r4 s8 sn8*2 bd4 s8 r8 | sn8*2 bd4 s8 r8 sn8*2 bd4 s8 r8 |
			\break
			
			bd4 s8 bd4 s8 r8*2 bd4 s8 sn8 | sn8*2 bd4 s8 bd4 s8 bd4 s8 sn8 | bd4 s8 r8*2 bd4 s8 sn8 bd4 s8 | r8*2 bd4 s8 sn8 bd4 s8 r4 s8 |
			\break
			
			sn8*2 bd4 s8 sn8 sn8*2 bd4 s8 sn8 | bd4 s8 sn8*2 sn8 ~ sn8*2 sn8 bd4 s8 | r8*2 bd4 s8 sn8 bd4 s8 bd4 s8 | sn8*2 bd4 s8 sn8 bd4 s8 r4 s8 |
			\break
			
			sn8*2 bd4 s8 sn8 bd4 s8 bd4 s8 | r8*2 bd4 s8 bd4 s8 bd4 s8 r8 | bd4 s8 bd4 s8 r8*2 bd4 s8 sn8 | bd4 s8 sn8*2 sn8 ~ sn8*2 sn8 bd4 s8 |
			\break
			
			r8*2 bd4 s8 sn8 bd4 s8 bd4 s8 | sn8*2 bd4 s8 sn8 bd4 s8 r4 s8 | sn8*2 bd4 s8 sn8 sn8*2 bd4 s8 sn8 | sn8*2 bd4 s8 sn8 r2 s4 |
		}
	}
}

bdPattern = {
	\drummode {
		\repeat unfold 156 { bd4 }
		\scaleDurations 2/3 { bd8*2 bd4 s8 bd8 s2 s4 }
	}
}

hhpPattern = {
	\drummode {
		\repeat unfold 40 { s4 hhp4 s4 hhp4 }
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
			\voiceOne
			\snarePattern

		}

		\new DrumVoice {
			\voiceFour
			\hhpPattern
		}
	>>
}

outMidi = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat unfold 40 { \swingRideBar } 
		}

		\new DrumVoice {
			\voiceTwo
			\snarePattern

		}

%		\new DrumVoice {
%			\voiceFour
%			\bdPattern
%		}
	>>
}


% Layout
\score
{
	\drums
	{
		\tempo 4=60
	
		\swingMarkup
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
			\tempo 4=60
			\ticktock
			\outMidi
		}
	}
	\midi { }
}