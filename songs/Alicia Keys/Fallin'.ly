\version "2.19.56"

\include "articulate.ly"

\include "../../common/common.ily"

#(set-global-staff-size 19)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"

\paper {
   ragged-last-bottom = ##f
}


\layout {
  indent = 0
}

\header
{
  title="Alicia Keys - Fallin'"
}


main = \drums
{

  \set DrumStaff.drumStyleTable = #(alist->hash-table drumheads)
  \time 6/8
      \tempo 4=64
  <<
    \new DrumVoice {
      \voiceOne

     
      \override MultiMeasureRest.expand-limit = #3
      \compressFullBarRests
      \inlineMMR R1 * 6/8 * 4 
      \bar "||"
      
      \mark "Verse 1"
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 } 
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 } 
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 4 { hh8 hh8 hh8 hh8 hh8 hh8 } \bar "||"
      
      \break
      \mark "Chorus 1"
      \repeat unfold 2 { cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 } 
      cymc8 cymr8 cymr8 cymr8 cymr8 cymr8
      cymr8 cymr8 cymr8 cymr8 cymr8 <cymr hho>8
      
      \break
      \repeat unfold 2 { cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 } 
      cymc8 cymr8 cymr8 cymr8 cymr8 cymr8
      cymr4. r4. 
      \bar "||"
      
      \break
      \mark "Verse 2"
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 } 
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 3 { hh8 hh8 hh8 hh8 hh8 hh8 }
      hh8 hh8 hh8 hh8 hh8 hho8 

      \break
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 } 
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 24 { hh8 } 
      \bar "||"
      
      \break
      \mark "Chorus 2"
      r4. cymr8 cymr8 cymr8
      \repeat unfold 6 { cymr8 }
      cymc8 cymr8 cymr8 cymr8 cymr8 cymr8 
      cymr8 cymr8 cymr8 cymr8 cymr8  <cymr hho>8
      
      \break
      \repeat unfold 12 { cymr8 }
      r4. cymr8 cymr8 cymr8 
      cymr4. hh8 hh8 hho8
      \bar "||"
      
      \break
      \mark "Bridge"
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 }
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 18 { hh8 }
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      cymc8 hh8 hh8 hh8 hh8 hh8
      \repeat percent 2 { hh8 hh8 hh8 hh8 hh8 hh8 }
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 12 { hh8 }
      r1 * 6/8
      hho8 hho8 hho8 cymc8 cymc8 cymc8
      
      \break
      \mark "Chorus 3" 
      
      
  \override TupletBracket.shorten-pair = #'(-4.0 . -4.0)
  \override TupletNumber.text = \markup "play 3x"
  \bar "[|:"
      \repeat volta 3 { \tuplet 4/4 { cymr8 cymr8 cymr8 cymc8 cymr8 cymr8 
                        cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 
                        r4. cymc8 cymr8 cymr8 
                        cymr8 cymr8 cymr8 cymr8 cymr8 <hho cymr>8 
                        }
      }
      \bar ":|]"
      
      \break
      cymr8 cymr8 cymr8 cymc8 cymr8 cymr8
      cymr8 cymc8 cymr8 cymc8 cymr8 cymr8 
      r4. cymc8 cymr8 cymr8 
      cymr8 cymr8 cymr8 cymr8 cymr8 <hho cymr>8
      
      \break
      cymr8 cymr8 cymr8 cymc8 cymr8 cymr8
      cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 
      r4. cymc8 cymr8 cymr8 
      cymr8 cymr8 cymr8 cymr8 cymr8 <hho cymr>8
      
      \break
      cymr8 cymr8 cymr8 cymc8 cymr8 cymr8
      cymr8 cymc8 cymr8 cymc8 cymr8 cymr8 
      r4. cymc8 cymr8 r8 
      hho4. r4.
      
      \break
      \mark "End"
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 }
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 12 { hh8 }
      cymc8 hh8 hh8 hh8 hh8 hh8
      hh8 hh8 hh8 hh8 hh8 hho8

      \break
      \repeat percent 3 { hh8 hh8 hh8 hh8 hh8 hh8 }
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 12 { hh8 }
      cymc8 hh8 hh8 hh8 hh8 hh8
      hh8 hh8 hh8 hh8 hh8 hh8



    }
    \new DrumVoice {
      \voiceTwo

      \override MultiMeasureRest.expand-limit = #3
      \compressFullBarRests
      \inlineMMR R1 * 6/8 * 4 \bar "||"
      \repeat percent 3 { r1 * 6/8 }
      r4. ss4.
      
      \repeat percent 3 { bd4. ss8[ r8 bd8] }
      bd4. ss8 bd8 bd8
      
      bd4. ss8[ r8 bd8] 
      bd4. ss8 bd8 bd8 
      bd4. ss8[ r8 bd8] 
      bd8 bd8 bd8 bd8 bd8 bd8 
      
      bd8[ r8 bd8] sn8[ r8 bd8] 
      bd8 bd8 bd8 sn8 bd8 bd8 
      bd8[ r8 bd8] sn8[ r8 bd8] 
      bd8 bd8 bd8 sn8 bd8 bd8 
      
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd8 bd8 bd8 sn8[ r8 bd8]
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd4. r4.
      

      \repeat percent 3 { bd4. ss8[ r8 bd8] }
      bd4. ss8 bd8 bd8
      
      bd4. ss8[ r8 bd8]
      bd4. ss8 bd8 bd8
      bd4. ss8[ r8 bd8]
      bd8[ r8 bd8] bd8[ r8 bd8]
      
      \repeat percent 3 { bd4. ss8[ r8 bd8] }
      bd4. ss8 bd8 bd8
      
      bd4. ss8[ r8 bd8]
      bd4. ss8 bd8 bd8
      bd4. ss8[ r8 bd8]
      bd8 bd8 bd8 bd8 bd8 bd8 
      
      r4. sn8[ r8 bd8]
      bd8 bd8 bd8  sn8 bd8 bd8 
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd8 bd8 bd8 sn8 bd8 bd8 
      
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd8 bd8 bd8  sn8[ r8 bd8]
      r4. sn8[ r8 bd8]
      bd8 bd8 bd8 bd8 sn8 sn8
      
      \repeat percent 3 { bd4. sn8[ r8 bd8] }
      bd4. sn8 bd8 bd8
      
      bd4. sn8[ r8 bd8]
      bd4. sn8 bd8 bd8 
      bd4. sn8[ r8 bd8]
      bd8[ r8 bd8] bd8[ r8 bd8]
      
      bd4. sn8[ r8 bd8]
      \repeat percent 2 { bd4. sn8[ r8 bd8] }
      bd4. sn8 bd8 bd8
      
      bd4. sn8[ r8 bd8]
      bd4. sn8 bd8 bd8 
      r1 * 6/8
      bd8 bd8 bd8 sn8 sn8 sn8
      
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd8 bd8 bd8 sn8 bd8 bd8
      r4. sn8[ r8 bd8]
      bd8 bd8 bd8 sn8 bd8 bd8 
      
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd8 <bd sn>8 sn8 sn8[ r8 bd8]
      r4. sn8[ r8 bd8]
      bd8 bd8 bd8 sn8 bd8 bd8 
      
      bd8[ r8 bd8] sn8[ r8 bd8]
      bd8 bd8 bd8 sn8 bd8 bd8
      r4. sn8[ r8 bd8]
      bd8 bd8 bd8 sn8 bd8 bd8 
      
      bd8[ r8 bd8] sn8[ r8 bd8] 
      bd8 <bd sn>8 sn8 sn8[ r8 bd8]
      r4. sn8[ r8 bd8]
      bd4. r4.
      
      \repeat percent 3 { bd4. ss8[ r8 bd8] }
      bd4. ss8 bd8 bd8
      
      bd4. ss8[ r8 bd8]
      bd4. ss8 bd8 bd8 
      bd4. ss8[ r8 bd8]
      bd8[ r8 bd8] bd8[ r8 bd8]
      
      \repeat percent 3 { bd4. ss8[ r8 bd8] }
      bd4. ss8 bd8 bd8
      
      bd4. ss8[ r8 bd8]
      bd4. ss8 bd8 bd8 
      bd4. ss8[ r8 bd8]
      bd8 bd8 bd8 bd8 bd8 bd8 
      
      


    }
  >>
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
