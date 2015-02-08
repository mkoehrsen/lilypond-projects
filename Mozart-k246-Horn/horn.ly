\version "2.11.57"

\paper
{
  #(set-paper-size "letter")
  %first-page-number = 2
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  left-margin = 0.5\in
  line-width = 7.5\in
  bottom-margin = 0.5\in
  top-margin = 0.5\in
}

\include "hornI.lyi"
\include "hornII.lyi"

\book
{
  \header {
    title="Piano Concerto #8"
    subtitle="KV 246"
    composer="W.A. Mozart"
    instrument="Horn 1 in C"
  }
  \score
  {
    \new Staff %\with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \hornI >>
    }
  }
}

\book
{
  \header {
    title="Piano Concerto #8"
    subtitle="KV 246"
    composer="W.A. Mozart"
    instrument="Horn 1 transposed in F"
  }
  \score
  {
    \new Staff %\with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \transpose c g, \hornI >>
    }
  }
}

\book
{
  \header {
    title="Piano Concerto #8"
    subtitle="KV 246"
    composer="W.A. Mozart"
    instrument="Horn 2 in C"
  }
  \score
  {
    \new Staff %\with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \hornII >>
    }
  }
}

\book
{
  \header {
    title="Piano Concerto #8"
    subtitle="KV 246"
    composer="W.A. Mozart"
    instrument="Horn 2 transposed in F"
  }
  \score
  {
    \new Staff %\with { \consists "Page_turn_engraver" }
    {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
      \set Score.skipBars = ##t
      << \transpose c g, \hornII >>
    }
  }
}
