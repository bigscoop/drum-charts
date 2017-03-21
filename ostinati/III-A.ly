\version "2.19.56"

\paper {
  %page-count = #2
}

\layout {
  indent = 0
}

\header
{
  title="III-A"
}

currentTempo = 40
ticktock = \drums {
  \tempo 4=\currentTempo

  \drummode {
    hiwoodblock 8 lowoodblock lowoodblock lowoodblock
  }
}


solosn = \drums {
  \time 4/4 {

    \stemUp
    sn8. sn16 r8 sn8 r16 sn8. r8. sn16 | r16 sn8. r8. sn16 r8 sn8 r16 sn8. | sn8. sn16 r8. sn16 r8 sn8 r8 sn8 | r16 sn8. r16 sn8. sn8. sn16 r8. sn16|
    \break
    r8 sn8 r8 sn8 r8. sn16 r16 sn8. | sn8. sn16 r8 sn8 r16 sn8 sn 16 r16 sn8 sn16 | r8 sn8 r8 sn8 r8 sn8 r8 sn8 | r16 sn8. sn8. sn16 r16 sn8. sn8 sn8 |
    \break
    r8. sn16 r8. sn16 r8. sn16 r8. sn16 | r16 sn8. r16 sn8. r16 sn8. r16 sn8. | r8 sn8 sn8. sn16 r16 sn8. r16 sn8. | sn8. sn16 r8 sn8 r8 sn8 r8. sn16 |
    \break
    r8. sn16 r8 sn8 r16 sn8. sn4 | r16 sn8. r16 sn8 sn16 r8. sn16 r8 sn8 | r8 sn8 r16 sn8. r8. sn16 r16 sn8. | r16 sn8 sn16 r16 sn8 sn16 r16 sn8 sn16 r16 sn8 sn16 |
    \break
    sn4 sn r16 sn8. sn8. sn16 | r16 sn8 sn16 r8 sn8 r16 sn8. r8. sn16 | r8. sn16 r8 sn8 r8 sn8 r16 sn8. | r8 sn8 sn8. sn16 r8. sn16 r8. sn16 |
    \break
    r16 sn8 sn16 r8 sn8 sn4 r16 sn8 sn16 | r8 sn8 sn8. sn16 r16 sn8. r8. sn16 | r16 sn8. r16 sn8 sn16 r8. sn16 r16 sn8. | r8 sn8 sn sn sn sn sn sn |
    \break
    r16 sn8. sn8. sn16 sn8. sn16 r16 sn8 sn16 | sn8 sn8 sn8. sn16 r16 sn8. r8. sn16 | sn8. sn16 r8. sn16 r8. sn16 r8. sn16 | r16 sn8 sn16 r8 sn8 sn sn sn4 |
    \break
    sn8. sn16 r8 sn8 sn8. sn16 r16 sn8. | r16 sn8 sn16 r16 sn8 sn16 r8. sn16 r16 sn8. | sn8. sn16 r8 sn 8 r16 sn8. sn8. sn16 | r8 sn8 r16 sn8. sn8. sn16 r4 |
  }
}

solobd = \drums {
  \time 4/4 {

    \stemUp
    bd8. bd16 r8 bd8 r16 bd8. r8. bd16 | r16 bd8. r8. bd16 r8 bd8 r16 bd8. | bd8. bd16 r8. bd16 r8 bd8 r8 bd8 | r16 bd8. r16 bd8. bd8. bd16 r8. bd16|
    \break
    r8 bd8 r8 bd8 r8. bd16 r16 bd8. | bd8. bd16 r8 bd8 r16 bd8 bd 16 r16 bd8 bd16 | r8 bd8 r8 bd8 r8 bd8 r8 bd8 | r16 bd8. bd8. bd16 r16 bd8. bd8 bd8 |
    \break
    r8. bd16 r8. bd16 r8. bd16 r8. bd16 | r16 bd8. r16 bd8. r16 bd8. r16 bd8. | r8 bd8 bd8. bd16 r16 bd8. r16 bd8. | bd8. bd16 r8 bd8 r8 bd8 r8. bd16 |
    \break
    r8. bd16 r8 bd8 r16 bd8. bd4 | r16 bd8. r16 bd8 bd16 r8. bd16 r8 bd8 | r8 bd8 r16 bd8. r8. bd16 r16 bd8. | r16 bd8 bd16 r16 bd8 bd16 r16 bd8 bd16 r16 bd8 bd16 |
    \break
    bd4 bd r16 bd8. bd8. bd16 | r16 bd8 bd16 r8 bd8 r16 bd8. r8. bd16 | r8. bd16 r8 bd8 r8 bd8 r16 bd8. | r8 bd8 bd8. bd16 r8. bd16 r8. bd16 |
    \break
    r16 bd8 bd16 r8 bd8 bd4 r16 bd8 bd16 | r8 bd8 bd8. bd16 r16 bd8. r8. bd16 | r16 bd8. r16 bd8 bd16 r8. bd16 r16 bd8. | r8 bd8 bd bd bd bd bd bd |
    \break
    r16 bd8. bd8. bd16 bd8. bd16 r16 bd8 bd16 | bd8 bd8 bd8. bd16 r16 bd8. r8. bd16 | bd8. bd16 r8. bd16 r8. bd16 r8. bd16 | r16 bd8 bd16 r8 bd8 bd bd bd4 |
    \break
    bd8. bd16 r8 bd8 bd8. bd16 r16 bd8. | r16 bd8 bd16 r16 bd8 bd16 r8. bd16 r16 bd8. | bd8. bd16 r8 bd 8 r16 bd8. bd8. bd16 | r8 bd8 r16 bd8. bd8. bd16 r4 |
  }
}


% Layout
\book {

  \score
  {

    \solobd

    \layout
    {
      %    \set countPercentRepeats = ##t
      %    \set repeatCountVisibility = #(every-nth-repeat-count-visible 1)
    }
  }

  % MIDI
  \score
  {
    \unfoldRepeats
    {
      \ticktock
      <<
        \repeat volta 32 {\ticktock}
        \solobd
      >>
    }

    \midi { }
  }

}
