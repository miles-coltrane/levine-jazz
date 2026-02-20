\version "2.24.4"
\include "include/prologue.ly"

% The Big Push, Wayne Shorter, The Soothsayer
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7 | f:min7 | bf:7 | f:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \tupletUp
  \tuplet 3/2 {a''8 d4}
  \tuplet 3/2 {c4 a8}
  \tuplet 3/2 {g8 bf4}
  \tuplet 3/2 {a4 f8}
  \bar "||"
  \tuplet 3/2 {ef8 g4}
  \tuplet 3/2 {f4 ef8}
  \tuplet 3/2 {c8 ef4}
  \tuplet 3/2 {d4 bf8}
  | \break
  \tuplet 3/2 {a8 c4} bf4 g8 bf8 af4 |
  g8 bf8 g8 ef8~ ef2
  |
  \bar "||"
}

\include "include/treble.ly"
