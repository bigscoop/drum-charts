\version "2.19.56"

\include "articulate.ly"

\include "../common/common.ily"


#(set-global-staff-size 24)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"


\layout {
  indent = 0
}

\header
{
  title="Mozambique"
}


main = \drums
{
  \repeat volta 8 {
    \set DrumStaff.drumStyleTable = #(alist->hash-table drumheads)
    \time 4/4
    <<
      \new DrumVoice {
        \voiceOne


        \tempo 4=120
        rb8 rb16 sn16 rb16 rb16 tomh16 rb16~ rb16 rb16 rb16 tomh16 rb16 rb16 toml16 rb16



      }
      \new DrumVoice {
        \voiceTwo
        hhp4 <hhp bd>4 hhp4 <hhp bd>4

      }
    >>
  }
  \bar "|."
}

\score {
  \main
  \layout { }
}
\score {
  \unfoldRepeats { \main }
  \midi { }
}
