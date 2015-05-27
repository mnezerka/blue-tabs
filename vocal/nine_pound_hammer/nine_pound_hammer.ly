% vim:ts=4:

\version "2.12.2"

\header {
	title = "Nine Pound Hammer"
	composer = "B. Monroe, arr: E. Ptáčková, O. Ruml"
}

\score {
	{
	\new StaffGroup
	<<

			<<
			\new ChordNames {
				\set chordChanges = ##t
				\chordmode {
						r1 g c g2 d2 g
				}
			}

			\new Staff = "Tenor" {

		 		\relative c'' {
				\new Voice = "Tenor" {
					\key g \major
					\time 4/4
					r2 r8  g'8 g g
					e d (d4.) d16 b d8 d
					c2 r8 d8 d d 
					b2 r8 d16 d d8 d
					b1	
				}
				}
			}

	
			\new Staff = "Lead" {

		 		\relative c'' {
				\new Voice = "Lead" {
					\key g \major
					\time 4/4
					r2 r8  d8 d d
					b g (g4.) b16 g b8 a
					g (e e4.) b'8 b b 
					g2 r8 b16 b b8 b
					g1	
				}
				}
			}

			\new Lyrics \lyricsto "Lead" {
					Oh roll on bu -- ddy don't you roll so slow
					how can I roll when the wheel's won't go
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
					tempoWholesPerMinute = #(ly:make-moment 52 2)
			}
	}

}
