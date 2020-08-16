bass = \relative c' {
  \time 4/4
  \key g \major

  g4 g g g | a g c,2 | f4 g d g | c, g' d g, | g'4 g g g | a g c,4. d8 | e8 fis g4 d e | c d g,4. g'8 |
  fis4 d a2 | d4. c8 b a g4 | d'2 c | d g,4 g' | fis d a' a, | d4. c8 b a g4 | d'2 c | d g, |
  \repeat volta 2 {
    g'4 e e g | d2 c | a4 b8 c d4 g | e8 fis g4 d8 c b a | g4. g'8 fis4 g | d g c,2 | g'4 g, a b | c d g, g' ~ |
    g fis g a| d,2 g4 g, | a4. b8 c d e4 | d2 g,4 g' | fis d a' a, | d2 c4 g | a4. b8 c d e4 | d2 g,2 |
  }
  g1

  \bar "|."
  
}