\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7 | f1:7 | g1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  f''1^\markup{"\"avoid\" note"}
  \bar "||"
  bf^\markup{"\"avoid\" note"}
  \bar "||"
  gf^\markup{"\"wrong\" note"}
  c,^\markup{"\"avoid\" note"}
  \bar "||"
}
theBass = {
  <c e bf>1
  \bar "||"
  <f a ef'>1
  \bar "||"
  \time 8/4
  <g b f'>1
  <g b f'>1
  \bar "||"
}

\include "include/dual.ly"
