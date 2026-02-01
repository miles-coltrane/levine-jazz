\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:7.9-/f
  s1 | c1:7.9-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.3
  <e' g c ef>1
  \bar "||"
  ef4 e f s4
  \bar "||"
}
theBass = {
  <f df'>1
  \bar "||"
  s1
  \bar "||"
}

\include "include/dual.ly"
