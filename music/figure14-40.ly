\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 | g1:7 | r1 | e1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 2 f'8 a' c' f' |
  <b~ e'~>1 |
  <b e'>2 d'4 e'4 |
  <g d' g'>1
  \bar "||"
}
theBass = {
  \partial 2 r2 | <g,~ f~>1 | <g, f>1 | e,1
  \bar "||"
}

\include "include/dual.ly"
