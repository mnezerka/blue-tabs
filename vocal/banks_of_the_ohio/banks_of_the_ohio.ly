% vim:ts=4:

\version "2.12.2"

\header {
		tagline = ""
}

\score {
	{
	\new StaffGroup
	<<
			<<

			\new ChordNames {
				\set chordChanges = ##t
				\chordmode { r1 d1 d a a a a d d d d g g d a d}
			}

			\new Staff = "Lead" {

		 		\relative c' {
				\new Voice = "Lead" {
					\key d \major
					\time 4/4
					r4 <d fis> <d fis> <e g>
					<fis a>1
					(<fis a>4) <d fis> <d fis> <fis a>
					<e a>1
					(<e g>4) <e g> <e g> <fis a>
					<g a>1
					(<g cis>4) <b cis> <b cis> <a cis>
					<fis a>1
					(<fis a>2) <fis a>4 <a cis>
					<a cis>1
					(a4) <fis a>8 <fis a> <g a>4 <a cis>
					<g b>1
					(<g b>2) <d fis>4 <e a>
					<fis a>1
					(<fis a>4) <fis a>8 <g b> <fis a>4 <e g>
					<d fis>1
				}
				}
			}

			\new Lyrics \lyricsto "Lead" {
					And on -- ly say that you'll be mine
					In o -- ur home we'll hap -- py be
					Down be -- side where the wa -- ters flow
					On the banks of the O -- hi -- o
			}
			>>

	>>
	}

	\layout {
		indent = 0\cm

		\context {
			\Lyrics
			\override LyricSpace #'minimum-distance = #1.0
		}

	}

	\midi {
			\context {
					\Score
					tempoWholesPerMinute = #(ly:make-moment 72 2)
			}
	}

}

