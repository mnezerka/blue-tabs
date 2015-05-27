% vim:ts=4:

\version "2.12.2"

\header {
	title = "Zdálo se mně zdálo"
}

\score {
	{
	\new StaffGroup
	<<
			<<
			\new Staff = "Lead" {

				\relative c' {
				\new Voice = "Lead" {
					\key g \major
					\time 2/4
					e4 fis g a g2 e r2 r r
					e'2 d4 d  b4 c d2 e r r r
					e4 d  b a  g2 e2 r r r
					e2 e4 fis g a g2 e2 r r r
				}
				}
			}

			\new Staff = "Baritone" {

				\relative c' {
				\new Voice = "Baritone" {
					\key g \major
					\time 2/4
					b4 c d e d2 c r2 r r
					b'2 a4 a  b4 c d2 e r r r
				}
				}
			}

			\new Lyrics \lyricsto "Lead" {
				Zdá -- lo se mně, zdá -- lo,
				hej, na ne -- dě -- lu rá -- no,
				že by -- la mu -- zi -- ka
				a u ní chlap -- ců má -- lo.
			}
			>>
	>>
	}

	\midi {
			\context {
					\Score
					tempoWholesPerMinute = #(ly:make-moment 52 2)
			}
	}

	\layout {
		indent = 0\cm

		\context {
			\Lyrics
			\override LyricSpace #'minimum-distance = #1.0
		}

	}
}
