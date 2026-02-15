\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:sus7 | f:sus7
}
theTreble = \relative {
  r8 g'4 g8 g8 fs8 e8 fs8 | g2.~ g8 a8 | bf8 a8 g8 a8 bf2
  \bar "||"
}

\include "include/treble.ly"
