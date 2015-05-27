% vim:ts=4:

\version "2.12.2"

\header {
	tagline = ""
}

global =  {
	\key c \major
	\time 4/4
}

\score {
	{
	  {
		<<
			\new ChordNames {
				\set chordChanges = ##t
				\chordmode { c1  f4 c2.  c1  f4 a2:m d4:m g1  a2:m g2  f1 f}
			}


			\relative c'' {
			  \new Voice  = "predehra" {
					g1  f4 e2.  g1  f4 e2 f4  d1  e2 d2  c2. as8 g  f1 \bar "||" \break
			  }	
			}
			>>
		}
		
		{
		  <<

			\new ChordNames {
				\set chordChanges = ##t
				\chordmode { c1 | f4 c2. | c1 | f4 c2. | d1:m | g4:m d2:m a4:7
				d1:m | g4:m d2.:m | c1 | f4 c2. | g1 | c4 g2. | f1 | bes4 f2. |
				c1 | f4 c2.

				c1 | c | c | a:m | a:m | a:m| a:m | bes | bes | f | bes4 f2.
				
				}
			}


		  \relative c' {
			  \new Voice  = "lead" {
					r8 g e' e e e4.
					f4 e4 r4 e8 e
					e4 r r8 e e e
					f4 e r e8 e
					f4 f r8 f f4
					g4 f r4 r
					r4 f8 f f4 r8 f
					g4 f r8 d d d
					(d4) e8 e e4. e8
					f4 e4 r4 r8 e
					g4 g r8 g g4
					a4 g r4 r8 g
					a8 a r4 r8 a a4
					bes4 a r8 c, c4
			  		e4 e r8 e e4
					f4 e r8 e e e 

			  		e4 e r8 e e4 \bar "||"
					r2 r8 e e e
			  		f4 e r8 c'4 c8
			  		c4. c8 c4 c
					d8 c4. r4 c8 c
			  		c4. c8 c c4.
					d8 c4. r4 c8 c
					d4 d d8 d4.
					d8 d4. r8 c bes4
			  		a4 r8 a8 a4 a
					bes4 a4 r2
			  }
		  }

		  \new Lyrics \lyricsto "lead" {
			  "1. Jde" po sko -- se -- ný trá -- vě
			  a jde tak jak se to pí -- še
			  s větrem v zádech s kytkou v hlavě
			  dů -- stoj -- ně a ti -- še
			  a z polí slí -- ta -- jí se ptá -- ci
			  a kaž -- dej "z nich" ji vě -- ří
			  a o -- na se pak vra -- cí 
			  a má v rukou je -- jich pe -- ří

			 Je to můj člo -- věk s "hlavou..."
			 	"...kte" -- rá to ne -- ví 
			  Mís -- to "k ní" však mí -- řím ně -- kam
			  kde je ten co se tak vzte -- ká 
			  že ta hrů -- za kte -- rou če -- kám 
			  ne -- ní ta kte -- rá mě če -- ká
			  }
	  		>>			
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
