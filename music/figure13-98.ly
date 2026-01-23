\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  bf'1
  \bar "||"
}
theBass = {
  <af d'>1
  \bar "||"
}

\include "include/dual.ly"
