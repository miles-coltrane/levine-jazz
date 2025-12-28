\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | c1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 c''8 b | bf a g f e d c b | bf c d e a g r4
  \bar "||"
}

\include "include/treble.ly"
