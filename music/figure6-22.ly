\version "2.24.4"
\include "include/prologue.ly"

% Nutville,  Horace Silver, The Cape Verdean Blues
theTempo = 280
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  c1:min | r1 | r1 | r1 | r1 | r1 |f:min|r1|r1|df:7|c:min|r1
}
theTreble = \relative {
  r4 d'8 g8 c,4 r4 |
  d4 g8 c,8 r2 |
  r4 d8 gf8 c,4 r8 g'8 |
  d8 g4 c,8 r2 | \break
  r8 g'8 d8 fs8 c8 g'4 d8 |
  \tuplet 3/2 { g4 d4 g4 } \tuplet 3/2 { d4 g4 c,4} |
  r2 r8 bf'8 af8 bf8 |
  f4 r8 bf8 af8 bf4 f8 | \break
  r2 r8 bf8 af8 bf8 |
  f8 af8 r4 r2 |
  r8 g8 d8 gf8 c,8 f8 r4 |
  r8 d8 g8 f8 r8 ef4 c8
  \bar "||"
}

\include "include/treble-aligned.ly"
