\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min7 f:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  f''8 e ef d c bf a g | f2
  \bar "||"
}

\include "include/treble.ly"
