\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7.9-.11+
}
theTreble = {
  <df' gf' bf'>1
  \bar "||"
}
theBass = {
  c1
  \bar "||"
}

\include "include/dual.ly"
