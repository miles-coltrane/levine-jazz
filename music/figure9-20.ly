\version "2.24.4"
\include "include/prologue.ly"

% Rosewood, Woody Shaw, Rosewood
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  f''16 ef df bf af f bf a af2
  \bar "||"
}

\include "include/treble.ly"
