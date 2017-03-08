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

  \song

  \layout
  {
    %    \set countPercentRepeats = ##t
    %    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
  }
}
}

% MIDI
% Unfolded repeats are required for MIDI when using multiple voices
\score
{
  \unfoldRepeats
  {
    \ticktock
  }

  \midi { }
}

\score
{
  \unfoldRepeats
  {
    \ticktock
    \song
  }

  \midi { }
}