\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:alt | f:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <ef'~ af'~>2 \tuplet 3/2 { <ef' af'>4 ef'4 df'4 } | <g af c'>1
  \bar "||"
}
theBass = {
  <c e bf>1 | <f, ef>1
  \bar "||"
}

\include "include/dual.ly"
