\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  af''8 f8 af4 f8 d bf a | af f af4 f2
  \bar "||"
}

\include "include/treble.ly"
