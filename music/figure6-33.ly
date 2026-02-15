\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Freddie Hubbard, Hub Tones
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | e:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \tuplet 3/2 {r8 g''8 bf8}
  \tuplet 3/2 {f af ef}
  \tuplet 3/2 {g df f}
  \tuplet 3/2 {c ef bf} |
  d4
  \bar "||"
}

\include "include/treble.ly"
