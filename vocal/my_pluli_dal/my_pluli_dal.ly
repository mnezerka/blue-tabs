% vim:ts=4:

\version "2.12.2"

\header {
	title = "My pluli dál a dál"
}

\score {
	{
	\new StaffGroup
	<<

			<<

			\new ChordNames {
				\set chordChanges = ##t
				\chordmode {
					r4 g2. g g g g d:7 d:7 d:7 d:7 d:7 d:7 d:7 d:7 g g g g g g g:7 g:7
			 		c c c d:7 g g g g d:7 g
			 }
			}

			\new Staff = "Lead" {
		
		 		\relative c' {
				\new Voice = "Lead" {
					\key g \major
					\time 3/4
					\partial 1 d4 
					b'2 a4
					g2 g4
					g2.
					(g4) r g
					fis2 g4
					a2.
					a2.
					(a4) r c,
					c'2 b4
					a2.
					a2.
					(a4) r a
					g2 a4
					b2.
					b2.
					
					(b4) r d,
					b'2 a4
					g2 g4
					g2.
					(g4) r g
					a2 b4 
					c2.
					(e2.)
					(e2) e4

					d2 c4
					b2 g4
					b2.
					(b4) r d,
					b'2.
					a2.
					g2.
					(g4) r2
				}
				}
			}

			\new Staff = "Baritone" {
		
		 		\relative c' {
				\new Voice = "Baritone" {
					\key g \major
					\time 3/4
					\partial 1 b4 
					d2 c4
					b2 b4
					b2.
					(b4) r b
					a2 b4
					c2.
					c2.
					(c4) r a
					e'2 d4
					c2.
					c2.
					(c4) r c
					b2 c4
					d2.
					d2.
					
					(d4) r b
					d2 c4
					b2 b4
					b2.
					(b4) r b
					c2 d4 
					e2.
					(g2.)
					(g2) g4

					fis2 e4
					d2 b4
					d2.
					(d4) r b
					d2.
					c2.
					b2.
					(b4) r2
				}
				}
			}

			\new Lyrics \lyricsto "Lead" {
				My plu -- li dál a dál "v ze" -- le né le -- sy,
				kde vln -- ka "s vln" -- kou sla -- ví své ple -- sy,
				My plu -- li dál a dál "v ze" -- le ný háj,
				My plu -- li dál a dál "v ze" -- le ný háj.
			}
			>>
	>>
	}

	\midi {
			\context {
					\Score
					tempoWholesPerMinute = #(ly:make-moment 72 2)
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
