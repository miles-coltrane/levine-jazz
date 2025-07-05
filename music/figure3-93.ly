\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:maj7.3-/d
}
theTreble = \relative {
  <bf d fs a>1
  \bar "||"
}
theBass = {
  d,1
  \bar "||"
}

\include "include/dual.ly"
