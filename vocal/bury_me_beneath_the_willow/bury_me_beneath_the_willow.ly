% vim:ts=4:

\version "2.12.2"

\header {
	tagline = ""
}

\score {
	{
	\new StaffGroup
	<<

		\transpose g d \relative c'' {
			<<
			\new ChordNames {
				\set chordChanges = ##t
				\chordmode { \partial 2 r2 g1 g c c g g d d
					g g c c g d g g
				}
			}

			\new Staff = "Tenor" {

				\new Voice = "Tenor" {

					\key g \major
					\time 4/4

					\partial 2 d4 (g)
					g2. g4
					g2 e4 (d)
					e2. g4
					e4 (d) d (b)
					b (g) b4. c8
					d4 d e b
					d1

					(d2) d4 g
					g2. g4
					g2 e4 (d)
					e2. g4
					e (b) d2
					b4 (g2) b4
					a e' d b8 (a)
					b1 (b)
				}
			}



			\new Staff = "Lead" {

				\new Voice = "Lead" {
					\key g \major
					\time 4/4

					\partial 2 b4 (d)
					d2. e4
					d2 b4 (a)
					a2. b4
					g2 e
					d2 g4. a8
					b4 b c b 
					a1

					(a2) b4 (c)
					d2. e4
					d2 b4 (a)
					a2. b4
					g2 e
					d2. g4
					<fis a>4 <d e> <e d> <fis a>
					<b g>1 (<b g>)
				}
			}


			\new Lyrics \lyricsto "Lead" {
				"Ref: Oh" -- bur -- y me be -- neath the wil -- low  Un -- der the weep -- ing wil -- low tree
				So she will know where I am sleep -- ing And per -- haps she'll weep for me }

			>>

		}

	>>
	}

	\layout {
		indent = 0\cm

		\context {
			\Lyrics
			\override LyricSpace #'minimum-distance = #1.0
		}

	}
}

