\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7.5- f2:7.9- | c:maj7.3-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.3
   g''8 af f ef d c b af | g4
  \bar "||"
}

\include "include/treble.ly"
