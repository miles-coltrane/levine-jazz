\version "2.24.4"
\include "include/prologue.ly"

% Three Little Words, Art Tatum, Gene Norman Presents Vol I
theTempo = 225
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r2
  \tuplet 3/2 {g'''8 e c}
  \tuplet 3/2 {a g e} |
  \tuplet 3/2 {d c a}
  \tuplet 3/2 {g e d}
  \tuplet 3/2 {c a g}
  r4
  \bar "||"
}

\include "include/treble.ly"
