\version "2.14"

\include "common.ily"
\include "soprano_notes.ily"
\include "alto_notes.ily"
\include "tenor_notes.ily"
\include "bass_notes.ily"

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
	\include "header.ily"
	\score {
		
		\new StaffGroup
		<<
			\new Staff {
				\set Staff.midiInstrument = "trumpet"
				\set Staff.instrumentName = "Trumpet 1"
				<< \soprano \outline >>
			}
			\new Staff {
				\set Staff.midiInstrument = "french horn"
				\set Staff.instrumentName = "Horn"
				\alto
			}
			\new Staff {
				\set Staff.midiInstrument = "trombone"
				\set Staff.instrumentName = "Trombone"
				{ \clef bass \tenor }
			}
			\new Staff {
				\set Staff.midiInstrument = "tuba"
				\set Staff.instrumentName = "Tuba"
				{ \clef bass \bass }
			}
		>>
		
		\midi {}
		\layout {}
	}
}