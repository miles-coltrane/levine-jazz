\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:alt
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3.5
  f''8 ef df bf af df bf4
  \bar "||"
}
theBass = {
  <f bf cf' ef'>1
  \bar "||"
}

\include "include/dual.ly"
