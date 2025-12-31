\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  r2 r8 f'' a c| g a f d c f r4
  \bar "||"
}

\include "include/treble.ly"
