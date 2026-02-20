\version "2.24.4"
\include "include/prologue.ly"

% Lazy Bird, John Coltrane, Blue Train
theTempo = 250
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 ef:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  ef''4 c8 af g f e f| bf a af g f ef d c | bf2
  \bar "||"
}

\include "include/treble.ly"
