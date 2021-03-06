\version "2.18.2"

\layout {
	indent = 0
}

ticktock = \drummode {
	hiwoodblock 4 lowoodblock lowoodblock lowoodblock
}


swingRideBar = \drummode
{
	cymr4 \scaleDurations 2/3 { cymr8*2 cymr8 } cymr4 \scaleDurations 2/3 { cymr8*2 cymr8 }
}

dora = \drummode
{
	\override NoteHead.color = #yellow
	\override Stem.color = #yellow
	\override Beam.color = #yellow
	sn16 sn8 sn16
	\override NoteHead.color = #black
	\override Stem.color = #black
	\override Beam.color = #black
}

swingMarkup = \mark \markup {
	\hspace #15
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

