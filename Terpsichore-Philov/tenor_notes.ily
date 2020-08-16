tenor = \relative c' {
  \time 4/4
  \key g \major

  b8 c d4 d d | c d e2 | f4 d d d | e d d b | b8 c d4 d d  | c d e2 | e4 d d b | c a b g |
  a4 a2 a4 | a2 g4 d' | d2 g,4 c | a2 b4 d | a4 a2 a4 | a2 g4 d' | d2 g,4 c | a2 b |
  \repeat volta 2 {
    d4 e e d | d2 e | e4 d d d | e d d2 | d8 c b4 a b | a b c2 | d8 c b4 a d | c a b4. c8 |
    d4 a b cis | d a b d | c4. b8 a4 g | a2 b4. g8 | a4 a2 a4 | a2 c4 d | c4. b8 a4 g | a2 b |
  }
  b1

  \bar "|."

}