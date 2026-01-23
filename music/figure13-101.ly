\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7.9-.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <b e' gs'>1
  \bar "||"
}
theBass = {
  <b, d af>1
  \bar "||"
}

\include "include/dual.ly"
