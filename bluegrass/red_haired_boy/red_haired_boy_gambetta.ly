% vim:ts=4:

\version "2.12.2"

\header {
	title = "Red Haired Boy"
	composer = "Trischka and Gambetta"
}

PartA = {
					d8 e g fis g a b c 
					d e d b c4 b8 c 
					d c b a g a b g
					a g f e f2
					d8 e g fis g a b c 
					d e d b c4 b8 c 
					d g4 f8 g f d c
}

PartAEndFst = { bes4 g g2 }
PartAEndFstHarmony = { d2 g2 }

PartAEndSec = { bes4 g g4 d'8 e }
PartAEndSecHarmony = { d2 g2 }

PartAHarmony = \chordmode {
		g1 g2 c g1 f g1 g2 c g1 
}

PartB = {
					f4 f8 g f e d e
					f e d b c4 b8 c
					d c b a g a b g
					a g f e f2

					d8 e g fis g a b c 
					d e d b c4 b8 c 
					d g4 f8 g f d c
}

PartBHarmony = \chordmode {
		f1 g2 c g1 f
		g1 g2 c g1 
}

\score {
	{
		\new StaffGroup
		<<

			\new ChordNames
			{
				\key g \major
				\time 4/4
				\set chordChanges = ##t
				\PartAHarmony
				\PartAEndFstHarmony
				\PartAEndSecHarmony
				\PartBHarmony
				\PartAEndSecHarmony
				\PartAEndFstHarmony
			}

			\new Staff 
				\relative c'
				{
					\key g \major
					\time 4/4

					\repeat volta 2
					{
						\PartA
					}
					\alternative {
						\PartAEndFst
						\PartAEndSec
					}

					\repeat volta 2
					{
						\PartB
					}
					\alternative {
						\PartAEndSec
						\PartAEndFst
					}

				}
			

			\new TabStaff
			{
				\key g \major
				\time 4/4
				\relative c
				{
					\PartA
					\PartAEndFst
					\PartAEndSec
					\PartB
					\PartAEndSec
					\PartAEndFst
				}
			}
			
		>>
	}

	\layout { indent = 0\cm }

	\midi {}
}
