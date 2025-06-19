\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7.3- | r1
}
theTreble = \relative {
  c'8 f d g ef a f b |
  g c a d b ef c4
  \bar "||"
}
theBass = {
  <c~ ef~ g~ b~>1 |
  <c ef g b>1 |
  \bar "||"
}

\include "include/dual.ly"
