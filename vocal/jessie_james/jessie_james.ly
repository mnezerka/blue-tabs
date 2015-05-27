% vim:ts=4:

\version "2.12.2"

\header {
	title = "Jessie James"
}

\score {
	{
	\new StaffGroup
	<<

		 \relative c'' {
			<<
			\new ChordNames {
				\set chordChanges = ##t
				\chordmode { \partial 4 g4 c1 g g d g c2 g2 g2 d2 g1 }
			}

			\new Staff = "Tenor" {

				\new Voice = "Tenor" {
					\key g \major
					\time 4/4
					\partial 4 b4
					e8 e e e e4 r8 e16 e
					d8 d d c b4 r4
					b8 b b d g4 d
					d2 r4 r8 g16 e

					d8 d d d c b4 b8
					g4 c8 c g g4 b8
					d4 d8 d d d d c 
					b2. r4
				}
			}


			\new Staff = "Lead" {

				\new Voice = "Lead" {
					\key g \major
					\time 4/4
					\partial 4 g4
					c8 c c c c4 r8 c16 c
					b8 b b a g4 r4
					g8 g g b d4 b
					a2 r4 r8 d16 c

					b8 b b b a g4 g8
					e4 g8 g e d4 g8
					b4 b8 b a a b a 
					g2. r4
				}
			}

			\new Staff = "Barition" {

				\new Voice = "Barition" {
					\key g \major
					\time 4/4
					\partial 4 d4
					g8 g g g g4 r8 g16 g
					g8 g g e d4 r4
					d8 d d g b4 g
					fis2 r4 r8 b16 g

					g8 g g g e d4 d8
					c4 e8 e c b4 d8
					g4 g8 g fis fis g fis 
					d2. r4
				}
			}

			\new Lyrics \lyricsto "Lead" {
					Jó, Je -- sse že -- nu svou, ta -- dy ne -- chal u -- bo -- hou a tři děc -- ka ří -- kám vám,
					a -- le ten -- hle pří -- tel ha -- dí ten vám Je -- sse zra -- dí, já vím ten -- krát v noci prásk ho sám.
			}
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
