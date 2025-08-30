\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d4.:min7.5- | g1:7.9-
}
theTreble = \relative {
  \partial 4.
  d16' ef16  f8 f16 g16 |
  gs8 gs16 as16  b8 b16 cs16  d8 d16 e16  f8 f16 g16 |
  af8 af16 g16  f8 f16 e16  d16 cs16 b16 d,16  f16 af16 g f
  \bar "||"
}

\include "include/treble.ly"
