\version "2.24.4"
\include "include/prologue.ly"


theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | g1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  g'8 a b c_\markup\center-align{\smaller "11th"}  d e f g |
  \set fingeringOrientations = #'(right)
  <c,\eleventh>1
  \bar "||"
}
theBass = {
  <g b d' f'>1 |
  <g b d' f'>1 |
  \bar "||"
}

\include "include/dual.ly"
