\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:min7 df2:7 | c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <cf' gf'>2 <cf' f'>2 | <b e'>1
  \bar "||"
}
theBass = {
  af,2 df,2 | c,1
  \bar "||"
}

\include "include/dual.ly"
