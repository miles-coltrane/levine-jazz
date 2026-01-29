\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:7/ef b2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 5
  <fs b>2 s2
  \bar "||"
}
theBass = {
  <ef, a,>2 <b, ds fs a>2
  \bar "||"
}

\include "include/dual.ly"
