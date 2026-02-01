\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 |
  c1:maj7 |
  c2:min7 f2:7 |
  bf:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <f' c''>2 <f' b'>2 |
  <e' b'>1 |
  <ef' bf'>2 <ef' a'>2 |
  <d' a'>1
  \bar "||"
}
theBass = {
  b,2 g,2 |
  c,1 |
  c,2 f,2 |
  bf,,1
  \bar "||"
}

\include "include/dual.ly"
