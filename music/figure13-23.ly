\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:min7 | c:7 | f:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  <f' a c>1 |
  <e a c>1 |
  <d g c>1
  \bar "||"
}
theBass = {
  <g bf d'>1 |
  <c bf>1 |
  <ef a>1
  \bar "||"
}

\include "include/dual.ly"
