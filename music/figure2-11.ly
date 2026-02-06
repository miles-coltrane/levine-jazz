\version "2.24.4"
\include "include/prologue.ly"

% Philly Mignon, Freddie Hubbard, Here To Stay
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | r
}
theTreble = \relative {
  r8 g' a b c d e f | g g, r4 r2
  \bar "||"
}

\include "include/treble.ly"
