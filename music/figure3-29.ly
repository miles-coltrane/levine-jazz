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
  <c' e\thirteenth f a>1 | <b d e g>
  \bar "||"
}
theBass = \relative {
  g,1 | c,
  \bar "||"
}

\include "include/dual.ly"
