\version "2.24.4"
\include "include/prologue.ly"

% Wingspan, Mulgrew Miller, Wingspan
theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  cs''8 fs \tuplet 3/2{e cs b} e cs b a
  \bar "||"
}

\include "include/treble.ly"
