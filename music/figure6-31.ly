\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | ef2:7 e2:dim | d2:min7 g2:7 | c2:min7 f2:7 |
  bf2 bf:7 | ef2 e2:dim  | d2:min7 g2:7 | c2:min7 f2:7 |
  bf1:7 | ef2:7 e2:dim  | d2:min7 g2:7 | c2:min7 f2:7 |
  bf2 bf2:7 | ef2 e2:dim | bf1 | r1 |
  f1:7 | bf/f | f:7 |
  bf/f | g:7 | c:min |
  gf:7.5+ | f:7.5+ | bf:7 |
  ef2:7 e2:dim | d:min7 g:7 | c:min7 f:7 |
  bf bf:7 | ef e:dim | bf1
}
theTreble = \relative {
  r8 c'''4 g8 f4. bf8 |
  r8 f8 ef4~ ef8 af r8 ef8 |
  d8 f8 r8 f8 c4. f8 |
  r8 bf,8 a4~ a8 ef'8 r8 g,8 | \break
  f8 bf8 r8 g8 f4. af8 |
  r8 ef8 d4~ d8 g8 r8 ef8 |
  d8 c'8 r8 a8 bf4. d8 |
  r8 b8 c4~ c8 ef8 r8 df8 \bar "||" \break
  d8 g8 r8 f8 c4. ef8 |
  r8 d8 bf4~ bf8 f8 r8 d8 |
  g4 r4 r4 g'16 bf16 r8 |
  r8 g4 bf8 f4. a8 | \break
  r8 ef8 g4~ g8 c,8 r8 ef8 |
  d8 bf8 g4 c8 af8 f4 |
  bf4 bf4 bf8 c8 d4 |
  ef4 d8 bf8 r2 \bar "||" \break
  r4 \tuplet 3/2 {a8 c8 ef8 } f8 ef8 f4 |
  r8 bf,8 df16 d16 f16 g16 bf8 g8 bf4 |
  f,8 g16 a bf c d ef f8 ef8 f8 ef8 | \break
  d8 f, f f f f r4 |
  r8 g8 \tuplet 3/2 {b d f} af8 gf g ef |
  c4 ef8 d8 r8 c8 b4 | \break
  c8 d e gf af gf e4 |
  ef8 df b a g f ef d \bar "||"
  r8 c'4 g'8 f4. bf8 | \break
  r8 f8 ef8 a8 r8 ef8 d8 g8 |
  r8 d8 c4~ c8 f8 r8 bf,8 |
  a8 ef8 r8 af8 g2 | \break
  r4 r8 gf8 f4. d8 |
  ef8 df'8 bf8 g8 \tuplet 3/2 {df' d ef} bf4 |
  f4. ef8 r8 bf'8 bf4 | bf2 r2
  \bar "||"
}

\include "include/treble-aligned.ly"
