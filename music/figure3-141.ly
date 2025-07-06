\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7.9+
}
theTreble = \relative {
  c'''8 bf g4 fs8 e8 df4 | c8 bf8 g4 fs8 e8 df4
  \bar "||"
}
theBass = {
  <e~ g~ bf~ ef'~>1 |
  <e g bf ef'>1
  \bar "||"
}

\include "include/dual.ly"
