\version "2.24.4"
\include "include/prologue.ly"

% Rosewood, Woody Shaw, Rosewood
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  a'8 b cs a fs b gs e
  \bar "||"
}

\include "include/treble.ly"
