\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:sus7
}
theTreble = \relative {
  % TODO: mark "minor 9th" interval from b in bass cleff to c in treble cleff
  \set fingeringOrientations = #'(left)
  <e' a c\fourth>1
  \bar "||"
}
theBass = {
  \set fingeringOrientations = #'(left)
  <f b\third>1
  \bar "||"
}

\include "include/dual.ly"
