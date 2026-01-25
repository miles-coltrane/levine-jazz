\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d4:alt cf/c b:alt af/a |
  g2.:alt e4/f |
  ef2/b df2/g |
  b1/c
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <gf' bf 'f>4. <gf cf ef>8 <ef g d'>4 <ef af c>4 |
  <cf ef bf'>2. <b e gs>4 |
  <bf ef g>2 <af df f>4. <fs~ b~ ds~>8 |
  <fs b ds>1
  \bar "||"
}
theBass = {
  d'4. c'8 b4 a4 |
  g2. f4 |
  b,2 g,4. c,8~ |
  c,1
  \bar "||"
}

\include "include/dual.ly"
