\version "2.19.81"

\include "articulate.ly"

\include "../common/common.ily"

#(set-global-staff-size 24)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"

\paper {
  #(define fonts
     (set-global-fonts
      #:music "lilyjazz"
      #:brace "lilyjazz"
      #:roman "feta"
      #:sans "lilyjazz-chord"
      #:factor (/ staff-height pt 20)
      ))
  ragged-last-bottom = ##f
}


\header
{
  title="Wilcoxon"
}

\layout {
  indent = 0
}



soloI = \drummode {
  \time 2/4

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


  \bar "[|:"
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
  \bar ":|]"

}

soloII = \drummode {
  \time 2/4

  \partial 8 sn16_"R" sn16_"L"


  \repeat volta 2 {
    \bar "[|:"
    sn8_"R"^> sn16_"L" sn_"R" sn_"L" sn_"R" sn_"L" sn_"R"
    sn8_"L"^> sn16_"R" sn_"L" sn8_"R"^> sn16_"L" sn_"R"
    sn8_"L"^> sn16_"R" sn_"L" sn_"R" sn_"L"^> sn_"R" sn_"L"
    \break

    \flam sn16_"R"^> sn_"R" \flam sn_"L" sn_"L" \flam sn8_"R"^> \flam sn16_"L" sn_"L"
    \flam sn8_"R"^> \flam sn16_"L" sn_"L" \flam sn16_"R" sn_"R" \flam sn8_"L"^>
    \flam sn8_"R"^> \flam sn8_"L" \flam sn8_"R" \flam sn8_"L"^>
    \break

    \flam sn16_"R"^> sn_"L" sn8_"R" \flam sn16_"L"^> sn_"R" sn8_"L"
    \flam sn8_"R"^> \drag sn16_"R" sn_"L" \flam sn8_"R"^> \repeat tremolo 6 \tuplet 3/2 sn32_"L"^"7 str."
    (sn8_"R"^>) \flam sn_"L"^> \flam sn16_"R"^> sn_"L" sn_"R" sn_"L"
    \flam sn8_"R"^> \flam sn_"L"^> \flam sn16_"R"^> sn_"L" sn_"R" sn_"L"
    \break

    \flam sn16_"R"^> sn_"L" sn_"R" sn_"R" \flam sn_"L"^> sn_"R" sn_"L" sn_"L"
    \flam sn16_"R"^> sn_"L"^> sn_"R" sn_"L" sn_"R"^> sn_"L"^> sn_"R" sn_"L"
    \flam sn8_"R"^> \drag sn_"R" \drag sn16_"R" sn_"L" sn_"R" sn_"R"
    \break

    sn8_"L"^> \drag sn_"L"  \drag sn16_"L" sn_"R" sn_"L" sn_"L"
    \flam sn8_"R"^> \flam sn16_"L" sn_"L" \flam sn_"R" sn_"R" \flam sn8_"L"^>

  }

  \alternative {
    { \repeat tremolo 8 sn32_"R"^"9 str." (sn8_"R"^>) \drag sn16_"R" sn_"L" \bar ":|]" }
    { \repeat tremolo 8 sn32_"R"^"9 str." (sn8_"R"^>) r8 \bar "|." }
  }

}

#(define mydrums '((snare default #t 0)))
snarestaff = {
  \override Staff.StaffSymbol.line-positions = #'( 0 )
  \override Staff.BarLine.bar-extent = #'(-2.5 . 2.5)
  \override Staff.TextScript.padding = 2.0
  \set DrumStaff.instrumentName = #"Sn."
}

\book {
  \score {
    \header {
      piece = "Solo 1"
    }

    \new DrumStaff {
      \snarestaff
      \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)


      \stemUp
      \soloI

    }
  }

  \score {
    \header {
      piece = "Solo 2"
    }

    \new DrumStaff {
      \snarestaff
      \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
      \stemUp
      \soloII
    }
  }

}

% midi

currentTempo = 60
\book {
  \bookOutputSuffix "1"
  \score
  {
    \unfoldRepeats
    \new DrumStaff
    {
      \tempo 4=\currentTempo
      \soloI
    }
    \midi { }
  }
}

\book {
  \bookOutputSuffix "2"
  \score
  {
    \unfoldRepeats
    \new DrumStaff
    {
      \tempo 4=\currentTempo
      \soloII
    }
    \midi { }
  }
}

