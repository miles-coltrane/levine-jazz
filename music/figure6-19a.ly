\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt
}
theTreble = \relative {
  r8 a'8 \tuplet 3/2 {bf d fs} a8 g~ g4 |
  r8 c, \tuplet 3/2 {df f a} c bf~ bf4 |
  \bar "||"
}
theBass = {
  <e a bf d'>1 |
  <e a bf d'>1
  \bar "||"
}

\include "include/dual.ly"
