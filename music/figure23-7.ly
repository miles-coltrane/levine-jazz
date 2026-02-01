\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.9- | c1:maj7.3-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.3
  af''8 af16 g16 f8 f16 ef16 d16 c16 b16 d,16 f16 af16 g16 f16 | ef4
  \bar "||"
}

\include "include/treble.ly"
