\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7 | g1
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 3
  s1 | s1
}
theBass = {
  <d fs c'>1 |
  <d g b>1
  \bar "||"
}

\include "include/dual.ly"
