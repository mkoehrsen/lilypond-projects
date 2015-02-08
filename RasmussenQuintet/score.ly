\version "2.14"

\include "common.lyi"
\include "flute/m1lento.lyi"
\include "flute/m1allegro.lyi"
\include "oboe/m1lento.lyi"
\include "oboe/m1allegro.lyi"
\include "clarinet/m1lento.lyi"
\include "clarinet/m1allegro.lyi"
\include "horn/m1lento.lyi"
\include "horn/m1allegro.lyi"
\include "bassoon/m1lento.lyi"
\include "bassoon/m1allegro.lyi"

instrument = ""

\paper
{
  #(set-paper-size "letter")
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
  between-system-space = 0.5\cm
  between-system-padding = #0
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.5
  left-margin = 0.5\in
  line-width = 7.5\in
  bottom-margin = 0.5\in
  top-margin = 0.5\in
}

#(set-global-staff-size 16)

\book {
	\include "header.lyi"
	\score {
		
		\new StaffGroup
		<<
			\new Staff {
				\set Staff.midiInstrument = "flute"
				\set Staff.instrumentName = "Flute"
				\key f \major
				\tempo "Lento" 4 = 50
				\fluteMvmtILento \bar "|:"
				\tempo "Allegro Moderato" 4 = 112
				\fluteMvmtIAllegro \bar ".|"
			}
			\new Staff {
				\set Staff.midiInstrument = "oboe"
				\set Staff.instrumentName = "Oboe"
				\key f \major
				\oboeMvmtILento \bar "|:"
				\oboeMvmtIAllegro \bar ".|"
			}
			\new Staff {
				\set Staff.midiInstrument = "clarinet"
				\set Staff.instrumentName = "Clarinet"
				\transposition bes
				\key g \major
				\clarinetMvmtILento \bar "|:"
				\clarinetMvmtIAllegro \bar ".|"
			}
			\new Staff {
				\set Staff.midiInstrument = "french horn"
				\set Staff.instrumentName = "Horn"
				\transposition f
				\hornMvmtILento \bar "|:"
				\hornMvmtIAllegro \bar ".|"
			}
			\new Staff {
				\set Staff.midiInstrument = "bassoon"
				\set Staff.instrumentName = "Bassoon"
				\clef bass
				\key f \major
				\bassoonMvmtILento \bar "|:"
				\bassoonMvmtIAllegro \bar ".|"
			}
		>>
		
		\midi {}
		\layout {}
	}
}