\version "2.24.4"
\include "include/prologue.ly"

% Locomotion, John Coltrane, Blue Train
theTempo = 265
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  f'8 af4 af4 f4 e8 | r8 ef4 df8 ef4 df4 | bf4. df8 r2 | r4 ff8 ef8 df8 bf4.
  \bar "||"
}

\include "include/treble.ly"
