\version "2.24.4"
\include "include/prologue.ly"

% The Cape Verdean Blues, Horace Silver, The Cape Verdean Blues
theTempo = 135
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 <fs'' bf>8 g8 f8 ef8 c4 |
  <fs bf>8 g8 f8 ef8 c8 ef8 f4 |
  ef4 c2.
  \bar "||"
}

\include "include/treble.ly"
