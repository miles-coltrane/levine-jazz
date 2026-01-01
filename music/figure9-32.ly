\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 f:min7 | g:min7 f:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  r4 g'8 bf c d~ d4 | c8 bf a f~ f2
  \bar "||"
}

\include "include/treble.ly"
