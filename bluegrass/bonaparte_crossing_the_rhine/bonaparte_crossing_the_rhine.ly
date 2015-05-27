\version "2.12.2"

\header {
	title = "Bonaparte Crossing The Rhine"
	composer = "z alba Slávka Hanzlíka"
	tagline = ""
}

melodydata = {
		\partial 2 fis4 g |
		\repeat volta 2 {
			a2 a8 b a fis |
			a2 d4 e |
			fis8 e d e fis4 a |
			d,2 d4 cis |
			b4 b8 cis d4 b				  
		}
		\alternative {
			{
				a4 fis e d |
				e2 e4 fis |
				e2 fis4 g
			}
			{
				a4 fis e fis |
				d1 |
				d2 d'4 e
			}
		}

		fis2 fis4 g |
		a2 d,4 cis |
		b b8 cis d4 b |
		a2 d4 cis |
		b b8 cis d4 b |
		a fis e d |
		e2 e4 fis |
		e2 fis4 g |
		a2 a8 b a fis |
		a2 d4 e |
		fis8 e d e fis4 a |
		d,2 d4 cis |
		b b8 cis d4 b |
		a fis e2 |
		d1 |
		d1
}

\new Score {
<<
	\new ChordNames
	{
		\set chordChanges = ##t
		\chordmode {
			r2 d1 d d d g d a a 
			d2 a2 d1 d
			d d g d g d a a 
			d d d d g d2 a2 d1 d
		}
	}

	\relative c' {
		\key d \major
		\time 4/4
		\set Score.voltaSpannerDuration = #(ly:make-moment 4 4)
		\melodydata
	}

	
	\new TabStaff
		\relative c {
			\key d \major
			\time 4/4
			\melodydata
		}

>>

}

\layout {
		indent = 0\cm

}

