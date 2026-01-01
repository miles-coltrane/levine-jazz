\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:sus7.9-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  b'8 e a, d b a f d| e1
  \bar "||"
}
theBass = {
  <e~ f~ a~ b~>1 |
  <e f a b>1
  \bar "||"
}

\include "include/dual.ly"
