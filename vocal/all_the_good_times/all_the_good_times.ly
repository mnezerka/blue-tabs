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
					g2. g c g g g d d
					g g c g g d g 
			 }
			}

			\new Staff = "Tenor" {
		
		 		\relative c'' {
				\new Voice = "Tenor" {
					\key g \major
					\time 3/4
					d4. d8 c4
					b2 g4
					c2 g4
					g2.
					d'4. d8 c4
					b2 b4
					d2. (d)

					d4. d8 c4
					b2 g4
					c2 g4
					g2 b8 b 
					d4 d d8 b
					d2 c4
					b2. (b)
				}
				}
			}


			\new Staff = "Lead" {
		
		 		\relative c'' {
				\new Voice = "Lead" {
					\key g \major
					\time 3/4
					b4. b8 a4
					g2 d4
					e (g) e
					d2.
					b'4. b8 a4
					g2 g4
					a2. (a)

					b4. b8 a4
					g2 d4
					e (g) e
					d2 g8 g
					b4 b b8 g
					a4 (b) a
					g2. (g)
						
				}
				}
			}

			\new Lyrics \lyricsto "Lead" {
					All the good times are past and gone. All the good times are o'er.
					All the good times are past and gone. Lit -- tle dar -- ling don't you weep no more. 
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

