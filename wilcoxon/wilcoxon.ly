\version "2.19.56"

\include "articulate.ly"

\include "common.ily"



flamm = \drummode { 
  \override Stem #'length = #4
  \acciaccatura {sn16} 
  \revert Stem #'length  
} 

dragg = \drummode { 
  \override Stem #'length = #1
  \acciaccatura {toml16 sn16} 
  \revert Stem #'length  
} 

#(define sjsdrums '(
      (acousticbassdrum () #f -3)
      (bassdrum () #f -3)
      (sidestick cross #f 1)
      (acousticsnare () #f 1)
      (snare () #f 1)
      (handclap triangle #f 1)
      (electricsnare () #f 1)
      (lowfloortom () #f -4)
      (closedhihat cross "stopped" 5)
      (hihat cross #f 5)
      (highfloortom () #f -2)
      (pedalhihat cross #f -5)
      (lowtom () #f -1)
      (openhihat cross "open" 5)
      (halfopenhihat xcircle #f 3)
      (lowmidtom () #f 0)
      (himidtom () #f 2)
      (crashcymbala cross #f 6)
      (crashcymbal cross #f 6)
      (hightom () #f 3)
      (ridecymbala cross #f 4)
      (ridecymbal cross #f 4)
      (chinesecymbal xcircle #f 6)
      (ridebell () #f 4)
      (splashcymbal cross #f 7)
      (cowbell triangle #f 5)
      (crashcymbalb cross #f 5)
      (vibraslap diamond #f 4)
      (ridecymbalb cross #f 5)
))


\paper {
  %page-count = #2
  system-count = #6
}

\layout {
  indent = 0
}

\header
{
  title="Wilcoxon"
}

currentTempo = 40
ticktock = \drums {
  \tempo 4=\currentTempo

  \drummode {
    hiwoodblock 8 lowoodblock lowoodblock lowoodblock
  }
}

ticktockIII = \drums {
  \tempo 4=\currentTempo

  \drummode {
    \partial 2. hiwoodblock 8 lowoodblock lowoodblock
  }
}

%
%flam =
%#(define-music-function (parser location music)(ly:music?)
%   #{
%     \acciaccatura { 16 } $music
%   #})

dragd =
#(define-music-function (parser location music)(ly:music?)
   #{
       \override Stem #'length = #4

     \acciaccatura { 16 16 } 
     \revert Stem #'length
     $music
   #})

soloI = \drummode
{
  \time 2/4
  <<
     \new DrumVoice {
      \voiceTwo

      \stemUp
      \repeat volta 2 {
        \flam sn8_"R"^> sn_"R"
        \flam sn8_"L"^> sn_"L"
        \noBreak

        \flam sn16_"R"^> sn_"L" sn_"R" sn_"R"
        \flam sn_"L"^> sn_"R" sn_"L" sn_"L"
        
        \noBreak

        \flam sn8_"R"^> sn16_"L" sn_"R"
        \flam sn8_"L"^> sn16_"R" sn_"L"
        \noBreak
        sn16_"R" sn_"L" \flam sn8_"R"^>
        sn16_"L" sn_"R" \flam sn8_"L"^>

        \break

        \flam sn16_"R" sn_"L"^> sn_"R" sn_"L"
        \flam sn8_"R"^> \flam sn16_"L" sn_"L"
        \noBreak

        \flam sn8_"R"^> sn_"R"
        \flam sn8_"L"^> sn_"L"

        \noBreak
        
        \flam sn16_"R"^> sn_"L" sn_"R" sn_"R"
        \flam sn16_"L"^> sn_"R" sn_"L" sn_"L"
        \noBreak
        \flam sn8_"R"^> \flam sn8_"L"
        \flam sn8_"R" \flam sn8_"L"^>
      }
      \break


      \repeat volta 2 {
        \flam sn16_"R"^> sn_"L" sn_"R" sn_"L"
        sn_"R" sn_"L" sn_"R" sn_"L"
        \noBreak

        sn_"R"^> sn_"L" sn_"R" sn_"R"
        sn_"L"^> sn_"R" sn_"L" sn_"L"

        \noBreak
        sn_"R"^> sn_"L" sn_"R"^> sn_"L"
        sn_"R"^> sn_"L" sn_"R" sn_"R"
        \noBreak

        sn_"L"^> sn_"R" sn_"L"^> sn_"R"
        sn_"L" sn_"R"^> sn_"L" sn_"L"

        \break
        sn_"R"^> sn_"L" sn_"R" sn_"L"
        sn_"R" sn_"L" sn_"R" sn_"L"
        \noBreak

        sn_"R"^> sn_"L" sn_"R" sn_"R"
        sn_"L"^> sn_"R" sn_"L" sn_"L"

        \noBreak
        
        sn_"R"^> sn_"L" sn_"R"^> sn_"L"
        sn_"R" sn_"L"^> sn_"R" sn_"L"
        \noBreak


        \flam sn8_"R"^> \flam sn8_"L"^>
        \flam sn4_"R"^>
      }

    }

  >>
}


soloII = \drums {
  \time 2/4
  <<
    \new DrumVoice {

      \voiceOne
      \slurDown

      \partial 8 sn16_"R" sn16_"L"


      \repeat volta 2 {

        sn8_"R"^> sn16_"L" sn_"R" sn_"L" sn_"R" sn_"L" sn_"R"
        sn8_"L"^> sn16_"R" sn_"L" sn8_"R"^> sn16_"L" sn_"R"
        sn8_"L"^> sn16_"R" sn_"L" sn_"R" sn_"L"^> sn_"R" sn_"L"
        \break

        \flam sn16_"R"^> sn_"R" \flam sn_"L" sn_"L" \flam sn8_"R"^> \flam sn16_"L" sn_"L"
        \flam sn8_"R"^> \flam sn16_"L" sn_"L" \flam sn16_"R" sn_"R" \flam sn8_"L"^>
        \flam sn8_"R"^> \flam sn8_"L" \flam sn8_"R" \flam sn8_"L"^>
        \break

        \flam sn16_"R"^> sn_"L" sn8_"R" \flam sn16_"L"^> sn_"R" sn8_"L"
        \flam sn8_"R"^> \drag sn16_"R" sn_"L" \flam sn8_"R"^> \repeat tremolo 4 sn32_"R"^"5 str."
        (sn8_"R"^>) \flam sn_"L"^> sn16_"R"^> sn_"L" sn_"R" sn_"L"
        \flam sn8_"R"^> \flam sn_"L"^> sn16_"R"^> sn_"L" sn_"R" sn_"L"
        \break

        \flam sn16_"R"^> sn_"L" sn_"R" sn_"R" \flam sn_"L"^> sn_"R" sn_"L" sn_"L"
        \flam sn16_"R"^> sn_"L"^> sn_"R" sn_"L" sn_"R"^> sn_"L"^> sn_"R" sn_"L"
        \flam sn8_"R"^> \drag sn_"R" \drag sn16_"R" sn_"L" sn_"R" sn_"R"
        \break

        sn8_"L"^> \drag sn_"L"  \drag sn16_"L" sn_"R" sn_"L" sn_"L"
        \flam sn8_"R"^> \flam sn16_"L" sn_"L" \flam sn_"R" sn_"R" \flam sn8_"L"^>

      }

      \alternative {
        { \repeat tremolo 8 sn32_"R"^"9 str." (sn8_"R"^>) \drag sn16_"R" sn_"L" }
        { \repeat tremolo 8 sn32_"R"^"9 str." (sn8_"R"^>) r8 }
      }
    }
  >>
}

song =
\drums
{


  \soloI
  \break

  \bar "|."
}

% Layout
\book {

  \score
  {
    \header
    {
      piece="SOLO No.1"
    }

    \soloI

    \layout
    {
\override NonMusicalPaperColumn.line-break-permission = ##f
    % **EDIT** also here, specify ragged-right property
    ragged-right = ##f
          %    \set countPercentRepeats = ##t
      %    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
    }
  }

  \score
  {
    \header
    {
      piece="SOLO No.2"
    }

    \soloII

    \layout
    {
      %    \set countPercentRepeats = ##t
      %    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
    }
  }
}

% MIDI
% Unfolded repeats are required for MIDI when using multiple voices

\book {
  \bookOutputSuffix "1"
  \score
  {
    \unfoldRepeats
    {
%      \ticktock
      \soloI
    }

    \midi { }
  }
}

\book {
  \bookOutputSuffix "2"
  \score
  {
    \unfoldRepeats  {
      \ticktockIII
      \soloII
    }
    \midi { }
  }
}
