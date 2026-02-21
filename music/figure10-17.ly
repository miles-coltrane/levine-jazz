\version "2.24.4"
\include "include/prologue.ly"

% The Cape Verdean Blues, Horace Silver, The Cape Verdean Blues
theTempo = 135
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 <g'' bf>4 <g bf>4 <g bf>4 | gf4 gf4 f4 c8 ef8~ | ef8 c8~ c2.
  \bar "||"
}

\include "include/treble.ly"
