\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:alt af2:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <bf ef' af'>2. cf''8 <cf'~ ef'~ af'~>8 | <cf' ef' af'>2
  \bar "||"
}
theBass = {
  <c e>2. r8 <af,~ gf~>8 | <af, gf>2
  \bar "||"
}

\include "include/dual.ly"
