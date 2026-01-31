\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 e1:min7.5- | a1:alt | c1:min7 | f1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 bf'4
  \bar "||"
  a1~ |
  a4 g4 a4 bf4 |
  f4 f2.~ |
  f1
  \bar "||"
}

\include "include/treble.ly"
