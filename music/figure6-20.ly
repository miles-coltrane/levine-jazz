\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r1
}
theTreble = \relative {
  \partial 8 bf''16 cf |
  bf8 af16 bf16 af8 gf16 af16 gf8 ff16 gf16 ff8 ef16 f16 |
  ef8 d16 ef16 f8 c16 d16 c8 b16 c16 bf8 g16 bf16 | \break
  g8 f16 g16 f8 ef16 f16 ef8 d16 ef16 f8 ef16 f16 |
  g8 f16 g16 af8 g16 af16 g8 f16 g16 f8 ef16 f16 | [ef8 c8]
  \bar "||"
}

\include "include/treble-aligned.ly"
