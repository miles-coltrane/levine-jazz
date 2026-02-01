\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 a2:7.9- | d1:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r2 cs''8 bf a g | f d
  \bar "||"
}

\include "include/treble.ly"
