\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:maj7 f:7.9- | bf:min7
}
theTreble = \relative {
  <f' g bf ef>2
  <ef gf cf ef> |
  <df af' ef'>
  \bar "||"
}
theBass = {
  <af, g>2 <f, ef> | <bf, af>2
  \bar "||"
}

\include "include/dual.ly"
