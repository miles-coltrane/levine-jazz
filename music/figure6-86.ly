\version "2.24.4"
\include "include/prologue.ly"

% Pretty Eyes, Horace Silver, The Cape Verdean Blues
theTempo = 155
theKey = c
theSignature = 3/4
theChords = \chordmode {
  g2.:maj7 | f:min7 | bf:alt |
  ef:min7
}
theTreble = \relative {
  r16 a'16 fs a g8 bf16 g16 af8 c16 af16 | bf8 d16 bf16 c8 ef16 c16 d8 f16 d16 | ef8 g16 ef16 gf8 af16 f16 gf8 bf16 gf16 | \break
  af4 s2
  \bar "||"
}

\include "include/treble.ly"
