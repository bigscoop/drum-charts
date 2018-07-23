\version "2.19.56"

\include "articulate.ly"

\include "../../common/common.ily"



\paper {

  #(define fonts
     (set-global-fonts
      #:music "lilyjazz"
      #:brace "lilyjazz"
      #:factor (/ staff-height pt 20)
      ))
 % system-system-spacing.basic-distance = #20
  %annotate-spacing = ##f
  ragged-last-bottom = ##f
  %  system-system-spacing.padding = #28
    system-system-spacing.stretchability = #20
    page-count = #2
  %  system-count = #5
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
  <<
    \new DrumVoice {
      \voiceOne
      %      \override StemTremolo #'slope = #0.5
      %\override StemTremolo #'beam-thickness = #0.3
      %\override StemTremolo #'beam-width = #2
      \override StemTremolo #'Y-offset = #3
      %  \override Beam #'positions = #'(4 . 4)


      \tempo 4=64
      \override MultiMeasureRest.expand-limit = #3
     
      \compressFullBarRests
      R1 * 6/8 * 4 \bar "||"
      
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
      cymr4. r4. \bar "||"
      
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
      r4. hh8 hh8 hh8
      \repeat unfold 6 { hh8 }
      cymc8 hh8 hh8 hh8 hh8 hh8
      hh8 hh8 hh8 hh8 hh8 hho8
      
      \break
      \repeat unfold 12 { hh8 }
      r4. hh8 hh8 hh8
      hh4. hh8 hh8 hho8
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
      \repeat volta 3 { \tuplet 4/4 { cymr8 cymr8 cymr8 cymc8 cymr8 cymr8 
                        cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 
                        r4. cymc8 cymr8 cymr8 
                        cymr8 cymr8 cymr8 cymr8 cymr8 <hho cymr>8 
                        }
      }
      
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
      R1 * 6/8 * 4 \bar "||"
      s1 s1 s1
      
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
