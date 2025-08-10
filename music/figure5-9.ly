\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf8:/d af4:/e gf8:/f
}
theTreble = \relative {
  <df' gf bf>8 <ef af c>4 <gf bf df>8 r2
  \bar "||"
}
theBass = {
  d8 e4 f8 r2
  \bar "||"
}

\include "include/dual.ly"
