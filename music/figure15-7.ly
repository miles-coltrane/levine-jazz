\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 | b1:maj7 | bf1:7 | ef1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 2 as'4 as'4
  \bar "||"
  <ds' as'~>1 |
  <d as>2 \tuplet 3/2 {af'4 g'4 fs'4} |
  <d' g'>1
  \bar "||"
}
theBass = {
  \partial 2 r2 |
  b,1 |
  bf,1 |
  ef,1
  \bar "||"
}

\include "include/dual.ly"
