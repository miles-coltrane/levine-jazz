\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = df
theSignature = 3/4
theChords = \chordmode {
  bf2.:min | b:7.11+ | bf2.:min | b:7.11+ |
  bf2.:min | b:7.11+ | bf2.:min | b:7.11+ |
  ef:min | e:7 | ef:min | e:7 |
  bf2.:min | b:7.11+ | bf2.:min | b:7.11+ |
}
theTreble = \relative {
  bf'8 f r4 r8 bf |
  b fs r4 r8 b |
  bf f r4 r8 bf |
  af ef r4 r8 af | \break
  f bf r4 r8 f |
  fs b r4 r8 fs |
  g c r4 r8 bf |
  af4 ef8 af8 gf4 | \break
  bf8 ef r4 r8 ef8 |
  e8 b r4 e4 |
  ef8 bf r4 r4 |
  \tuplet 3/2 {cf8 bf cf}
  \tuplet 3/2 {bf cf bf}
  cf8 af16 gf16 | \break
  f4 r8 bf4 f8 |
  gf4 r8 cf4 gf8 |
  f4 r8 bf4 ff8 |
  ef4 r8 af4 gf8 | f4
  \bar "||"
}

\include "include/treble-aligned.ly"
