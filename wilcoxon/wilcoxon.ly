\version "2.19.56"

\paper {
  %page-count = #2
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


flam =
#(define-music-function (parser location music)(ly:music?)
   #{
     \acciaccatura { 16 } $music
   #})

drag =
#(define-music-function (parser location music)(ly:music?)
   #{
     \acciaccatura { 16 16 } $music
   #})

soloI = \drummode
{
  \time 2/4
  <<
    \new DrumVoice {
      \voiceTwo

      \stemUp
      \repeat volta 2 {
        \acciaccatura sn16( \stemUp sn8_"R")^> sn_"R"
        \acciaccatura sn16( \stemUp sn8_"L")^> sn_"L"

        \acciaccatura sn16( \stemUp sn_"R")^> sn_"L" sn_"R" sn_"R"
        \acciaccatura sn( \stemUp sn_"L")^> sn_"R" sn_"L" sn_"L"

        \acciaccatura sn16( \stemUp sn8_"R")^> sn16_"L" sn_"R"
        \acciaccatura sn16( \stemUp sn8_"L")^> sn16_"R" sn_"L"

        sn16_"R" sn_"L" \acciaccatura sn16( \stemUp sn8_"R")^>
        sn16_"L" sn_"R" \acciaccatura sn16( \stemUp sn8_"L")^>

        \break

        \acciaccatura sn16( \stemUp sn_"R") sn_"L"^> sn_"R" sn_"L"
        \acciaccatura sn16( \stemUp sn8_"R")^> \acciaccatura sn16( \stemUp sn_"L") sn_"L"

        \acciaccatura sn16( \stemUp sn8_"R")^> sn_"R"
        \acciaccatura sn16( \stemUp sn8_"L")^> sn_"L"

        \acciaccatura sn16( \stemUp sn_"R")^> sn_"L" sn_"R" sn_"R"
        \acciaccatura sn( \stemUp sn_"L")^> sn_"R" sn_"L" sn_"L"

        \acciaccatura sn16( \stemUp sn8_"R")^> \acciaccatura sn16( \stemUp sn8_"L")
        \acciaccatura sn16( \stemUp sn8_"R") \acciaccatura sn16( \stemUp sn8_"L"^>)
      }
      \break


      \repeat volta 2 {
        \acciaccatura sn16( \stemUp sn_"R"^>) sn_"L" sn_"R" sn_"L"
        sn_"R" sn_"L" sn_"R" sn_"L"

        sn_"R"^> sn_"L" sn_"R" sn_"R"
        sn_"L"^> sn_"R" sn_"L" sn_"L"

        sn_"R"^> sn_"L" sn_"R"^> sn_"L"
        sn_"R"^> sn_"L" sn_"R" sn_"R"

        sn_"L"^> sn_"R" sn_"L"^> sn_"R"
        sn_"L" sn_"R"^> sn_"L" sn_"L"

        \break
        sn_"R"^> sn_"L" sn_"R" sn_"L"
        sn_"R" sn_"L" sn_"R" sn_"L"

        sn_"R"^> sn_"L" sn_"R" sn_"R"
        sn_"L"^> sn_"R" sn_"L" sn_"L"

        sn_"R"^> sn_"L" sn_"R"^> sn_"L"
        sn_"R" sn_"L"^> sn_"R" sn_"L"


        \acciaccatura sn16( \stemUp sn8_"R")^> \acciaccatura sn16( \stemUp sn8_"L"^>)
        \acciaccatura sn16( \stemUp sn4_"R")^>
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
      \ticktock
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
