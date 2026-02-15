\version "2.24.4"
\include "include/prologue.ly"

% Idle Moments, Grant Green, Idle Moments
theTempo = 75
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min | r1 | d:min7.5- | g:alt
}
theTreble = \relative {
  ef''16 c16 r8 c8 r8 c8 r8 c8 g16 c16 |
  ef16 c16 r8 c8 r8 c8 r8 r8 g,16 af16 |
  g'16 ef16 r8 d8 r8 d8 r8 r8 d16 ef16 | \break
  bf'16 af16 r8 ef16 gf16 r8 df16 ef16 r8 {[cf16 af8]}
  \bar "||"
}

\include "include/treble.ly"
