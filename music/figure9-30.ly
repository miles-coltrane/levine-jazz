\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:sus7.9-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.3
  \partial 2
  \tuplet 3/2 {a'16 g e} d8 \tuplet 3/2 {a'16 g e} d8 |
  [\tuplet 5/2 {a'16 g e d b~}]
  [b16 e16~ \tuplet 3/2 {e16 d b}] a2
  \bar "||"
}
theBass = {
  \partial 2
  <e~ f~ a~ b~>2 |
  <e f a b>1
  \bar "||"
}

\include "include/dual.ly"
