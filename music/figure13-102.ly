\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b1/f
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <fs b ds' fs'>1
  \bar "||"
}
theBass = {
  f,1
  \bar "||"
}

\include "include/dual.ly"
