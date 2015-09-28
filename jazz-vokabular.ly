\version "2.16.0"


\header 
{
  title="Jazz Vokabular"
  composer=""
}


ticktock = \drums {
	  \tempo 4=120
	
	\drummode {
		 
    	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
    } 
}

downThemeA = \drummode
{
  bd4 sn bd8 bd sn bd 
}

downThemeB = \drummode
{
  bd8 bd sn bd r bd sn bd
}

swingTheme = \drummode
{
	cymr4 \scaleDurations 2/3 { cymr8*2 cymr8}
}

upThemeHeadingCrash = \drummode
{
  cymc8 cymr cymr cymr cymr cymr cymr cymr
}

downGhostThemeA = \drummode
{
  bd4 sn8. \parenthesize sn16 bd8 bd sn bd
}

allIntro = \drummode
{
  R1*3

  r2 r8 
  tomfh8 < tomfh tomml > tomfh8 
}

allPreVerse = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
	  \repeat unfold 28 { \swingTheme }
    }
    \new DrumVoice {
      \voiceTwo
       
%      \scaleDurations 2/3 { cymr8*2 cymr8 cymr8*2 cymr8 cymr8*2 cymr8 cymr8*2 cymr8 }
\repeat volta 5 {      \repeat unfold 2 { sn2 } } 

      \repeat unfold 2 { \scaleDurations 2/3 { r8*2 sn8 r8*2 r8 } }
      \repeat unfold 2 { r4 sn4 }
      \repeat unfold 2 { \scaleDurations 2/3 { r8*2 r8 r8*2 sn8 } }
      \repeat unfold 2 { sn4 sn4 }
      \repeat unfold 2 { \scaleDurations 2/3 { r8*2 sn4 r8 sn8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 r8*2 r8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { r8*2 sn8 sn8*2 r8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { r8*2 r8 sn8*2 sn8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 r8 r8*2 sn8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { sn4 r8 sn8*2 sn8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 sn8*2 r8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 r8*2 sn8 } }
      \repeat unfold 2 { \scaleDurations 2/3 { sn8*2 sn8 sn8*2 sn8 } }
    }
  >>
}


swing = \mark \markup { 
  \line \general-align #Y #DOWN { \score { 
  \new Staff \with {
    fontSize = #-2
    \override StaffSymbol #'line-count = #0 
    \override VerticalAxisGroup #'Y-extent = #'(0 . 0)
  }
  \relative { 
    \stemUp 
    \override Score.SpacingSpanner 
      #'common-shortest-duration = #(ly:make-moment 3 16) 
    \override Beam #'positions = #'(2.5 . 2.5)
    b'8[ b8] 
  }
  \layout {
    ragged-right= ##t
    indent = 0
    \context { 
    \Staff \remove "Clef_engraver" 
    \remove "Time_signature_engraver" }
  }} " ="
  \score { \new Staff \with {
    fontSize = #-2
    \override StaffSymbol #'line-count = #0 
    \override VerticalAxisGroup #'Y-extent = #'(0 . 0)
  }
  \relative { 
    \stemUp 
    \override Score.SpacingSpanner 
      #'common-shortest-duration = #(ly:make-moment 3 16)
    \override Beam #'positions = #'(2.5 . 2.5)
    \times 2/3 { b'8[ r b8] } 
  }
  \layout {
    ragged-right= ##t
    indent = 0
    \context { 
      \Staff 
      \remove "Clef_engraver" 
      \remove "Time_signature_engraver" }
    }}
  \fontsize #-2
  \italic { "  swing" }
  }
}


upChorusA = \drummode
{
  cymc4 cymc cymc cymc
}

upChorusB = \drummode
{
  cymc4 s4 s2 
}

downChorusA = \drummode
{
  bd4 sn4 bd8 bd8 sn4
}

downChorusB = \drummode
{
  bd4
  \stemUp
  <bd sn>16-> sn sn sn
  <bd sn>16-> sn sn sn
  <bd sn>16-> sn sn sn
  \stemDown
}

allChorusOne = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \repeat unfold 3 { \upChorusA \upChorusB }
      \upChorusA
      cymc4 s2 s4 
    }
    \new DrumVoice {
      \voiceTwo
      \repeat unfold 3 { \downChorusA \downChorusB }
      \downChorusA
      bd4 sn16-> sn sn sn tommh tommh tomml tomfh \acciaccatura sn16 sn8 bd8
    }
  >>
}

allVerseTwo = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \upThemeHeadingCrash
      \repeat unfold 7 { \swingTheme }
    }
    \new DrumVoice {
      \voiceTwo 
      \repeat unfold 4 { \downThemeA \downThemeB }
    }
  >>
}

allChorusTwo = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \repeat unfold 3 { \upChorusA \upChorusB }
      \upChorusA
    }
    \new DrumVoice {
      \voiceTwo
      \repeat unfold 3 { \downChorusA \downChorusB }
      \downChorusA
      sn8->[ bd] sn->[ bd] sn->[ bd] sn->[ bd]
    }
  >>
}

allChorusThree = \allChorusTwo

upBridgeA = \drummode
{
  cymc8 hhho hhho hhho hhho hhho hhho hhho
}

upBridgeB = \drummode
{
  cymc8 hhho hhho hhho hhho hhho hhho s8
}

upBridgeC = \drummode
{
  cymc8 hhho hhho hhho hhho hhho cymc hhho
}

downBridgeA = \drummode
{
  bd8 bd sn4 bd8 bd sn4
}

downBridgeB = \drummode
{
  bd8 bd sn4 bd8 bd sn sn16->[ sn->]
}

downBridgeC = \drummode
{
  bd8 bd sn4 bd8 bd sn bd
}

allBridgeOne = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \repeat volta 4 { \upBridgeA }
      \alternative { \upBridgeB \upBridgeC }
    }
    \new DrumVoice {
      \voiceTwo
      \repeat volta 4 { \downBridgeA }
      \alternative { \downBridgeB \downBridgeC }
    }
  >>
}

upSolo = \drummode
{
  cymc4 cymc cymc cymc
}

allPreSoloSolo = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \repeat percent 10 { \upSolo \upChorusA }
    }
    \new DrumVoice {
      \voiceTwo
      \repeat percent 10 { \downGhostThemeA \downThemeB }
    }
    \context DrumVoice {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #1
      \repeat percent 10 { s1 s1 }
    }
    \context DrumVoice {
      { s1*4 \break \mark "Solo" s1*16 }
    }
  >>
}

allBridgeTwo = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \repeat volta 6 { \upBridgeA }
      \alternative { \upBridgeB \upBridgeC }
    }
    \new DrumVoice {
      \voiceTwo
      \repeat volta 6 { \downBridgeA }
      \alternative { \downBridgeB \downBridgeC }
    }
  >>
}

upOutroEnd = \drummode
{
  cymc4 cymc cymc cymc
}

downOutroEnd = \drummode
{
  bd8 bd sn bd sn[ sn] bd[ bd]
}

allOutro = \drummode
{
  << 
    \new DrumVoice {
      \voiceOne
      \repeat volta 4 { \upSolo }
      \alternative { \upChorusA \upOutroEnd }
      cymc4
    }
    \new DrumVoice {
      \voiceTwo
      \repeat volta 4 { \downGhostThemeA }
      \alternative { \downThemeB \downOutroEnd }
      bd4
    }
  >>
  \oneVoice
  r4 r2
  R1*2
}

song = 
\drums 
{
  \tempo 4=120
  
  \swing

  \allPreVerse
  \break

  \bar "|."
}

% Layout
\score
{
  \song
  
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
  	\ticktock
    \song
  }
  \midi { }
}