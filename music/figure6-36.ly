\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:sus7 | r1 |r1 | d:sus7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 0.9
  \partial 2
  ef'16 f16 g8  f16 g16 a8 |
  g16 a16 bf8   a16 bf16 c8   bf16 c16 d8  d16 ef16 f8 |
  f16 g16 a8  a16 bf16 c8  c16 d16 ef8~ ef8 d16 c16 | b1
  \bar "||"
}

\include "include/treble.ly"
