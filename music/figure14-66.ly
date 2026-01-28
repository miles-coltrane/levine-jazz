\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df1:maj7 | c1:alt | af1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <bf ef' af'>2. cf''8 <bf~ ef'~ af'~>8 |
  <bf ef' af'>2. cf''8 <bf~ ef'~ af'~>8 |
  <bf ef' af'>1
  \bar "||"
}
theBass = {
  <df f>2. r8 <c~ e~>8 |
  <c e>2. r8 <af,~ gf~>8 |
  <af, gf>1
  \bar "||"
}

\include "include/dual.ly"
