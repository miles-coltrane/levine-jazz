\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  g'8 gs a b c d e f | g e f d e c r4
  \bar "||"
}

\include "include/treble.ly"
