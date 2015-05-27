
\version "2.12.2"

\header {
	tagline = ""
}

{

		\context StaffGroup

		<<
			\relative c''
			\new Staff = "Tenor"
			{
				\new Voice = "Tenor"
				{

									c2 c c8 bes g4 g2
									c4 c c d e2 e
									c2 e c8 bes g4 g c 
									c bes g f g2 g	
				}	
			}

			\new Staff = "Lead"
			{
				\relative c''
				\new Voice = "Lead"
				{
									g2 g g8 f es4 c2
									g'4 g g a bes2 bes 
									g2 bes g8 f es4 c g'
									g f es bes c2 c
						
				}
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

