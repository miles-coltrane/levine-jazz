\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7.6-
}
theTreble = \relative {
  <b d g bf>1
  \bar "||"
}
theBass = {
  ef,1
  \bar "||"
}

\include "include/dual.ly"
