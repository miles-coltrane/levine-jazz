\version "2.24.4"
\include "include/prologue.ly"

theTempo = 150
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  ef1 | r | r | r |
  r | r | r | r |
  r4 r4 r8 a4.:dim
}
theTreble = \relative {
  bf'4 r8 c8 r4 bf4 | r8 ef8 r4 d4 r8 g8| r4 ef4 r8 g8 r4| bf,4 r8 ef8 r4 g,4 | \break
  r8 bf8 r4 b4 r8 g'8 | r4 b,4 r8 g'8 r4 | f4 r8 ef8 r4 c4 | r8 af8 r4 g'4 r8 f8~ | \break
  f4 ef4 r8 c4.
  \bar "||"
}

\include "include/treble.ly"
