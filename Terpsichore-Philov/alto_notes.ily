alto = \relative c' {
  \time 4/4
  \key g \major

  d4 g g g | e g g2 | a4 g fis g | g g fis g | d4 g g g | fis g g2 | g4 g fis e | e d d4. d8 |
  d4 d cis2 | d d4 g | fis2 g | d2 d4 g | d d cis2 | d2 d4 g | fis2 g | d d |
  \repeat volta 2 {
    g4 g g g | fis2 g | a4 g fis g | g g fis2 | g4 g a g | fis g g2 | g4 g e g | e d d2 |
    d2 g4 e | a2 d,4 g | e4. d8 c4 b | d2 d4 d | d d cis2 | d e4 g | d4. d8 c4 b | d2 d |
  }
  d1

  \bar "|."
  
}