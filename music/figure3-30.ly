\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:sus7 | c:maj7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <f a c e>1 | <g a b d>
  \bar "||"
}
theBass = \relative {
  g,1 | c,
  \bar "||"
}

\include "include/dual.ly"
