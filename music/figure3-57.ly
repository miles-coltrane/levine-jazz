\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min | c:min6- | c:min6 | c1:7
}
theTreble = \relative {
  r4 ef''8. c16 ef8 c4. |
  r4 ef8. c16 ef8 c4. |
  r4 ef8. c16 ef8 c4. |
  r4 ef8. c16 ef8 c4.
  \bar "||"
}
theBass = {
  <c~ ef~ g>1 |
  <c~ ef~ af>1 |
  <c ef a>1 |
  <c e bf>1 |
  \bar "||"
}

\include "include/dual.ly"
