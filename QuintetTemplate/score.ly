\version "2.14"

\include "common.lyi"
\include "trumpet1_notes.lyi"
\include "trumpet2_notes.lyi"
\include "horn_notes.lyi"
\include "trombone_notes.lyi"
\include "tuba_notes.lyi"

instrument = "Score"

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
				\set Staff.midiInstrument = "trumpet"
				\set Staff.instrumentName = "Trumpet 1"
				<< \trumpetI \outline >>
			}
			\new Staff {
				\set Staff.midiInstrument = "trumpet"
				\set Staff.instrumentName = "Trumpet 2"
				\trumpetII
			}
			\new Staff {
				\set Staff.midiInstrument = "french horn"
				\set Staff.instrumentName = "Horn"
				\horn
			}
			\new Staff {
				\set Staff.midiInstrument = "trombone"
				\set Staff.instrumentName = "Trombone"
				\trombone
			}
			\new Staff {
				\set Staff.midiInstrument = "tuba"
				\set Staff.instrumentName = "Tuba"
				\tuba
			}
		>>
		
		\midi {}
		\layout {}
	}
}