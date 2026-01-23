\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:alt
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <gf' bf' df'' gf''>1
  \bar "||"
}
theBass = {
  <af d'>1
  \bar "||"
}

\include "include/dual.ly"
