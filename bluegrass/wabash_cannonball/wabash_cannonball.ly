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
				\chordmode {
						g1 g2 c2 d1 d2 g2
						g1 g2 c2 d1 d2 g2
				}
			}

			\new Staff = "Tenor" {

		 		\relative c'' {
				\new Voice = "Lead" {
					\key g \major
					\time 4/4
					g8 g b c d4 g8 r8
					d b c b g4 r8 g
					fis fis a d d4 d8 a
					a a a g g4 r4	

					g8 g b d d g r d
					d b c b g4 r4
					fis8 fis a d d d d4
					a8 fis g a b4 r4	

				}
				}
			}

	
			\new Staff = "Lead" {

		 		\relative c' {
				\new Voice = "Lead" {
					\key g \major
					\time 4/4
					d8 d g g b4 d8 r8
					b g a g c,4 r8 c
					d d fis a b4 a8 fis
					fis fis fis e d4 r4	

					d8 d g a b d r b
					b g a g c,4 r4
					d8 d fis a b a a4
					fis8 d e fis g4 r4	

				}
				}
			}

			\new Staff = "Bariton" {

		 		\relative c' {
				\new Voice = "Bariton" {
					\key g \major
					\time 4/4
					b8 b d d g4 b8 r8
					g d fis d e4 r8 e 
					a, a d fis g4 fis8 d
					d d d c b4 r4	

					b8 b d fis g b r g
					g d e d e4 r4
					a,8 a d fis g fis fis4
					d8 a c d d4 r4	

				}
				}
			}


			\new Lyrics \lyricsto "Lead" {
					Už je sly -- šet  zdá -- li na ma -- ši -- ně zvon, to po -- zná ka -- ždý dí -- tě ten na -- křáp -- nu -- tej tón.
					Ha -- le -- ka -- jí  vši -- chni, co na ná -- dra -- ží  jsou: Slá -- va už zas při -- jel náš Wa -- bash Cann -- on -- ball.
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

	\midi {}

}
