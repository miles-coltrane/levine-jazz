\version "2.24.4"
\include "include/prologue.ly"

% Angola, Wayne Shorter, The Soothsayer
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7 | ef:7 | d:7 | ef:7 |
  d:7 | ef:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  fs'4 gs r8 af8 f8 af8~ |
  af4 bf4 r8 bf8 af8 a8~ |
  a4 c4 r8 f,8 a8 gf8~ |
  gf4 ef4 r8 df'8 ef,8 f8~ | \break
  f4 d4 r8 f8 d8 e8 |
  f4 gf4 r2
  \bar "||"
}

\include "include/treble.ly"
