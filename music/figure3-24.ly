\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:sus7 g:7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <c'\fourth f a>2  <b\third f' a>2
  \bar "||"
}
theBass = {
  g,2 g,2
  \bar "||"
}

\include "include/dual.ly"
