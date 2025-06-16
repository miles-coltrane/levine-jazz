\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:sus9-
}
theTreble = \relative {
  <ff af bf ef>1
  \bar "||"
}
theBass = \relative {
  ef,1
  \bar "||"
}

\include "include/dual.ly"
