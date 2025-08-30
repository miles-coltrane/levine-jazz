\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt
}
theTreble = \relative {
  r8 g'8 c d e c d4 |
  r8 bf8 ef8 f8 g8 ef8 f4
  \bar "||"
}
theBass = {
  <e a bf d'>1 |
  <e a bf d'>1
  \bar "||"
}

\include "include/dual.ly"
