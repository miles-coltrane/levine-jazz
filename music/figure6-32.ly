\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 c''8 g8 f4 b8 f8 |
  e4 a8 e8 d4 g8 d8 |
  c4 f8 c8 b4 e8 b8 |
  a4 d8 a8 g2
  \bar "||"
}

\include "include/treble.ly"
