\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 |
  c1:maj7 |
  g2:min7 c2:7 |
  f1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <f' c''>2 <f' b'>2 |
  <e' b'>1 |
  <f' bf'>2 <e' bf'>2 |
  <e' a'>1
  \bar "||"
}
theBass = {
  b,2 g,2 |
  c,1 |
  g,2 c,2 |
  f,1
  \bar "||"
}

\include "include/dual.ly"
