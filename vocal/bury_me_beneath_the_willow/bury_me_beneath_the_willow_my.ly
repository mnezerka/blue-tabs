% vim:ts=4:

\version "2.12.2"

\header {
	title = "Bury Me Beneath the Willow"
	composer = "version: Tony Rice & Ricky Scruggs"
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
					fis4 d e fis
					g1 (g)
				}
			}


			\new Staff = "Tenor" {

				\new Voice = "Tenor" {

					\key g \major
					\time 4/4

					\partial 2 d'4 (g)
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

			\new Lyrics \lyricsto "Lead" {
				"1. Oh" -- bur -- y me be -- neath the wil -- low  Un -- der the weep -- ing wil -- low tree
				So she will know where I am sleep -- ing And per -- haps she'll weep for me }

			\new Lyrics \lyricsto "Lead" {
				"2. My" heart is sad and I am lone -- ly For - the on -- ly one I love
				When -- shall I see her -- oh no ne -- ver Till we meet in heav -- en above }

			\new Lyrics \lyricsto "Lead" {
				"3. She" told me that she dear -- ly loved me How could I be -- lieve it un -- true
				Un -- til the an -- gels soft -- ly whis -- pered She will prove un -- true to you }

			\new Lyrics \lyricsto "Lead" {
				"4. To" -- morr -- ow was our we -- dding day _ Oh God oh God where can she be
				She's out a -- court -- ing with a -- not -- her And no lon -- ger cares for me }

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
