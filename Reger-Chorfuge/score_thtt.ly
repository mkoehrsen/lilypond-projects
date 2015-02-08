\version "2.14"

\include "common.lyi"
\include "soprano_notes.lyi"
\include "alto_notes.lyi"
\include "tenor_notes.lyi"
\include "bass_notes.lyi"

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
				\set Staff.instrumentName = "Trumpet 1"
				<< \transpose bes c' \soprano \outline >>
			}
			\new Staff {
				\set Staff.instrumentName = "Horn"
				\transpose f c' \alto
			}
			\new Staff {
				\set Staff.instrumentName = "Trombone"
				{ \clef bass \tenor }
			}
			\new Staff {
				\set Staff.instrumentName = "Tuba"
				{ \clef bass \bass }
			}
		>>
		
		\layout {}
	}
	\score {
		
		\new StaffGroup
		<<
			\new Staff {
				\set Staff.midiInstrument = "trumpet"
				<< \soprano \outline >>
			}
			\new Staff {
				\set Staff.midiInstrument = "french horn"
				\alto
			}
			\new Staff {
				\set Staff.midiInstrument = "trombone"
				{ \clef bass \tenor }
			}
			\new Staff {
				\set Staff.midiInstrument = "tuba"
				{ \clef bass \bass }
			}
		>>
		
		\midi {}
	}
}

