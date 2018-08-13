\version "2.19.56"

\include "articulate.ly"

\include "../../common/common.ily"

#(set-global-staff-size 19)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"

\paper {
  ragged-last-bottom = ##t
  system-system-spacing.basic-distance = #17
}


\layout {
  indent = 0
}

\header
{
  title="White Stripes - Seven Nation Army"
}


main = \drums
{

  \set DrumStaff.drumStyleTable = #(alist->hash-table drumheads)
  \time 4/4
  <<
    \new DrumVoice {
      \voiceOne


      \override MultiMeasureRest.expand-limit = #3

      \improvisationOn
      \bar "[|:"
      \compressFullBarRests
      \inlineMMR R1 * 4^\markup "bass only"

      \repeat percent 4 { 4^\markup "main beat" 4 4 4 }
      \bar "||"

      \break
      \repeat percent 8 { 4^\markup "verse" 4 4 4 }

      \break
      \repeat percent 8 { 4^\markup "+snare" 4 4 4 }
      \bar "||"

      \break
      8\<^>^\markup "pre-chorus" \repeat unfold 7 { 8 }
      8^> \repeat unfold 6 { 8 } 8\!
      \bar "||"

      \break
      { \repeat percent 10 { 4^\markup "chorus" } \tuplet 3/2 { 4 4 4 } \repeat percent 4 { 4 } }
      { \repeat percent 10 { 4 } \tuplet 3/2 { 4 4 4 } \repeat percent 4 { 4 } }

      \break
      \set Score.repeatCommands = #'((volta "2."))
      { \repeat percent 10 { 4^\markup "gt solo" } \tuplet 3/2 { 4 4 4 } \repeat percent 4 { 4 } }
      { \repeat percent 10 { 4 } \tuplet 3/2 { 4 4 4 } \repeat percent 4 { 4 } }
      \set Score.repeatCommands = #'((volta #f))

      \break
      \set Score.repeatCommands = #'((volta "1., 2."))
      8\< \repeat unfold 14 { 8 } 8\! \bar ":|]"
      \set Score.repeatCommands = #'((volta #f))

      \set Score.repeatCommands = #'((volta "3."))
      { 4 r2. r1 4 r2. }
      \set Score.repeatCommands = #'((volta #f))

      \improvisationOff
    }
  >>
  \bar "|."
}

\score {
  \main
  \layout { }
}