\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 df2:7 | c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <c' f'>2 <cf' f'>2 | <b e'>1
  \bar "||"
}
theBass = {
  d,2 df,2 | c,1
  \bar "||"
}

\include "include/dual.ly"
