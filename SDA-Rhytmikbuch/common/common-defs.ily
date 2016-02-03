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
	\revert NoteHead.color
	\revert Stem.color
	\revert Beam.color
}

ora = \drummode
{
	\override Rest.color = #darkyellow
	\override NoteHead.color = #darkyellow
	\override Stem.color = #darkyellow
	\override Beam.color = #darkyellow
	r16 sn8 sn16
	\revert Rest.color
	\revert NoteHead.color
	\revert Stem.color
	\revert Beam.color
}

ra = \drummode
{
	\override Dots.color = #magenta
	\override Rest.color = #magenta
	\override NoteHead.color = #magenta
	\override Stem.color = #magenta
	\override Beam.color = #magenta
	r8. sn16
	\revert Dots.color
	\revert Rest.color
	\revert NoteHead.color
	\revert Stem.color
	\revert Beam.color
}

brd = \drummode
{
	\override Dots.color = #cyan
	\override Rest.color = #cyan
	\override NoteHead.color = #cyan
	\override Stem.color = #cyan
	\override Beam.color = #cyan
	sn8. sn16
	\revert Dots.color
	\revert Rest.color
	\revert NoteHead.color
	\revert Stem.color
	\revert Beam.color
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

