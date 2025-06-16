\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7
}
theTreble = \relative {
  g''8 f_\markup{"4th"} e d e c r4
  \bar "||"
}
theBass = \relative {
  <c e g b> 1 |
  \bar "||"
}

\include "include/dual.ly"
