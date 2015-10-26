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
	subtitle="Snare patterns."
}


snarePattern = {
	\drummode {
		\scaleDurations 2/3 { 
			sn8*2 sn4 s8 sn8 sn4 s8 sn4 s8 | sn4 s8 sn4 s8 r8 s8 sn4 s8 sn8 | sn4 s8 sn4 s8 sn8*2 sn4 s8 sn8 | sn8*2 sn4 s8 sn8 sn4 s8 r4 s8 |
			\break
			
			sn8*2 sn4 s8 sn8 sn8 *2 sn4 s8 sn8 | sn4 s8 sn8*2 sn8 ~ sn8*2 sn8 sn4 s8 | r8 s8 sn4 s8 sn8 sn4 s8 sn4 s8 | r8 s8 sn4 s8 sn8 sn4 s8 r8 s8 sn8 |
			\break
			
			sn4 s8 sn4 s8 r8 s8 sn4. s8 | r8 s8 sn4. s8 sn8*2 sn4 s8 sn8 | sn8*2 sn4 s8 sn4 s8 sn4 s8 sn8 | r8 s8 sn4 s8 sn4 s8 sn4 s8 r8 |
			\break
			
			sn4 s8 sn4 s8 sn8*2 sn4 s8 sn8 | sn8*2 sn4 s8 sn8 sn8*2 sn4 s8 sn8 | r8 s8 sn4 s8 r8 sn4 r8 sn4 r8 | sn4 s8 r8 s8 sn8 ~ sn8 sn8*2 sn4 s8 |
			\break
			
			r8 s8 sn4 s8 r8 r8 s8 sn4 s8 r8 | r8 s8 sn4. s8 sn8*2 sn4 s8 sn8 | sn4 s8 sn8*2 sn8 ~ sn8*2 sn8 sn4 s8 | sn8*2 sn4 s8 sn8 sn4 s8 sn4 s8 |
			\break
			
			sn4 s8 sn4 s8 sn8*2 sn4 s8 sn8 | r8 s8 sn4 s8 sn8 r8 s8 sn4 s8 sn8 | sn4 s8 r4 s8 sn8*2 sn4 s8 r8 | sn8*2 sn4 s8 r8 sn8*2 sn4 s8 r8 |
			\break
			
			sn4 s8 sn4 s8 r8*2 sn4 s8 sn8 | sn8*2 sn4 s8 sn4 s8 sn4 s8 sn8 | sn4 s8 r8*2 sn4 s8 sn8 sn4 s8 | r8*2 sn4 s8 sn8 sn4 s8 r4 s8 |
			\break
			
			sn8*2 sn4 s8 sn8 sn8*2 sn4 s8 sn8 | sn4 s8 sn8*2 sn8 ~ sn8*2 sn8 sn4 s8 | r8*2 sn4 s8 sn8 sn4 s8 sn4 s8 | sn8*2 sn4 s8 sn8 sn4 s8 r4 s8 |
			\break
			
			sn8*2 sn4 s8 sn8 sn4 s8 sn4 s8 | r8*2 sn4 s8 sn4 s8 sn4 s8 r8 | sn4 s8 sn4 s8 r8*2 sn4 s8 sn8 | sn4 s8 sn8*2 sn8 ~ sn8*2 sn8 sn4 s8 |
			\break
			
			r8*2 sn4 s8 sn8 sn4 s8 sn4 s8 | sn8*2 sn4 s8 sn8 sn4 s8 r4 s8 | sn8*2 sn4 s8 sn8 sn8*2 sn4 s8 sn8 | sn8*2 sn4 s8 sn8 r2 s4 |
		}
	}
}

outPDF = \drummode
{
	<<
%		\new DrumVoice {
%			\voiceOne
%			\repeat unfold 38 { \swingTheme } 
%		}

		\new DrumVoice {
			\voiceOne
			\snarePattern

		}

		\new DrumVoice {
			\voiceFour
			\repeat unfold 156 { bd4 }
			\scaleDurations 2/3 { bd8*2 bd4 s8 bd8 s2 s4 }
			
		}
	>>
}

outMidi = \drummode
{
	<<
		\new DrumVoice {
			\voiceOne
			\repeat unfold 38 { \swingTheme } 
		}

		\new DrumVoice {
			\voiceTwo
			\snarePattern

		}

%		\new DrumVoice {
%			\voiceFour
%			\repeat unfold 48 { bd4 }
%		}
	>>
}


% Layout
\score
{
	\drums
	{
		\tempo 4=120
	
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
			\tempo 4=120
			\ticktock
			\outMidi
		}
	}
	\midi { }
}