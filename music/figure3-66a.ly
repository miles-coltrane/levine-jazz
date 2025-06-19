\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | r1
}
theTreble = \relative {
  c'8 f d g e a f b |
  g c a d b e c4
  \bar "||"
}
theBass = {
  <c~ e~ g~ b~>1 |
  <c e g b>1 |
  \bar "||"
}

\include "include/dual.ly"
