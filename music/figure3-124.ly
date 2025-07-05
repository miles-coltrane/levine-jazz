\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7.9-
}
theTreble = \relative {
  r8 b'' a d c af gf b |
  a f ef af gf d c f |
  ef b a d c af gf b | \break
  a f ef af gf2
  \bar "||"
}
theBass = {
  <ef~ fs~ a~ d'~>1 |
  <ef~ fs~ a~ d'~>1 |
  <ef~ fs~ a~ d'~>1 | \break
  <ef fs a d'>1 |
  \bar "||"
}

\include "include/dual.ly"
