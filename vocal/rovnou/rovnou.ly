% vim:ts=4:

\version "2.12.2"

\header {
	title = "Rovnou (Roll on, budy, roll on)"
	composer = "T. Wilburn, J. Vyčítal"
}

\score {
	{
	\new StaffGroup
	<<

		 \relative c'' {
			<<
			\new ChordNames {
				\set chordChanges = ##t
				\chordmode { g1 g c g c g g2 d2 g1 }
			}

			\new Staff = "Tenor" {

				\new Voice = "Tenor" {
					\key g \major
					\time 4/4
					b8 b4 b8 d c d b
					(b4) r4 r2
					e8 e4 e8 e c d d
					(d4) r4 r2

					e8 e4 e8 fis4. fis8 
					d d c d b2
					r8 d d b d4. c8
					b2 r2
				}
			}

			\new Staff = "Lead" {

				\new Voice = "Lead" {
					\key g \major
					\time 4/4
					g8 g4 g8 b a b g
					(g4) r4 r2
					c8 c4 c8 c g a b
					(b4) r4 r2

					c8 c4 c8 d4. d8 
					b b a b g2
					r8 b b g bes4. a8
					g2 r2
				}
			}

			\new Staff = "Bariton" {

				\new Voice = "Bariton" {
					\key g \major
					\time 4/4
					d8 d4 d8 g fis g d
					(d4) r4 r2
					g8 g4 g8 g e fis g
					(g4) r4 r2

					g8 g4 g8 c4. c8 
					g g fis g d2
					r8 g g e fis4. e8
					d2 r2
				}
			}



			\new Lyrics \lyricsto "Lead" {
				Rov -- nou jó ta dy rov nou rov nou jó ta dy rov nou
				pro stě tě pic a ne hle dej mě víc, to ti ří kám rov nou.
			}
			>>
		}

	>>
	}

	\midi {}

	\layout {
		indent = 0\cm

		\context {
			\Lyrics
			\override LyricSpace #'minimum-distance = #1.0
		}

	}
}
