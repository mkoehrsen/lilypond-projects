soprano = \relative c'' {
  \time 4/4
  \key g \major
  \tempo 2 = 88

  g8 a b4 b b | a b c2 | c4 b a b | c b a g | g8 a b4 b b | a b c2 | b4 b a g | g fis g4. b8 |
  a4 a e2 | fis g4 b | a a e2 | fis g4 b | a a e2 | fis g4 b | a a e2 | fis g4 g8 a |
  \repeat volta 2 {
    b4 b b b | a b c2 | c4 b a b | c b a g8 a | b c d4 d d | d d e2 | b8 c d4 c b | a8 g4 fis8 g4 b |
    a4 a e2 | fis g4 b | a a e2 | fis g4 b | a a e2 | fis g4 b | a a e2 | fis g |
  }
  g1

  \bar "|."
  
}