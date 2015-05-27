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
				\chordmode { \partial 1 g4 g2. g:7 c g g g d d
				g g:7 c g e:m d g  }

			}

			\new Staff = "Tenor" {

		 		\relative c'' {
				\new Voice = "Tenor" {
					\key g \major
					\time 3/4
					\partial 1 g4
					b2 c8 (b)
					d2 d4
					c2 g4
					g2 g4
					b2 c8 (b)
					d2 d4
					fis2.  
					(fis4) r4 d8 (g)

					g2 d8 (b)
					d2 d4
					c2 g4
					g2 g4
					b2 c8 (b)
					d2 c4
					b2.
					(b4) r2
				}
				}
			}


			\new Staff = "Lead" {

		 		\relative c' {
				\new Voice = "Lead" {
					\key g \major
					\time 3/4
					\partial 1 d4
					g2 a8 (g)
					b2 b8 (a)
					g2 e4
					d2 d4
					g2 a8 (g)
					b2 a8 (b)
					d2.  
					(d4) r4 b8 (d)

					d2 b8 (g)
					b2 b8 (a)
					g2 e4
					d2 d4
					g2 a8 (g)
					b2 a4
					g2.
					(g4) r2
					
				}
				}
			}

			\new Staff = "Bariton" {

		 		\relative c' {
				\new Voice = "Bariton" {
					\key g \major
					\time 3/4
					\partial 1 b4
					d2 e8 (d)
					g2 g4
					e2 c4
					b2 b4
					d2 e8 (d)
					g2 fis8 (g)
					a2.  
					(a4) r4 g8 (b)

					b2 g8 (d)
					g2 g4
					e2 c4
					b2 b4
					e2 fis8 (e)
					fis2 e4
					d2.
					(d4) r2
				}
				}
			}



			\new Lyrics \lyricsto "Lead" {
				A -- ma -- zing Grace, how sweet the sound, that saved a wretch like me 
				I once was lost but now I'm found. Was blind, but now I see.

			}


			>>

	>>
	}

	\midi { }

	\layout {
		indent = 0\cm

		\context {
			\Lyrics
			\override LyricSpace #'minimum-distance = #1.0
		}

	}
}



