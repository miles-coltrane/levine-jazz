\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 |
  c1:maj7 |
  cs2:min7 fs2:7 |
  b:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <f' c''>2 <f' b'>2 |
  <e' b'>1 |
  <e' b'>2 <e' as'>2 |
  <ds' as'>1
  \bar "||"
}
theBass = {
  b,2 g,2 |
  c,1 |
  cs,2 fs,2 |
  b,,1
  \bar "||"
}

\include "include/dual.ly"
