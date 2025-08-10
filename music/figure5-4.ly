\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2 df:/c
}
theTreble = \relative {
  <c' e af>4
  \tuplet 3/2 {<c e bf'>8 af'8 g8}
  <df f af>4
  g4
  \bar "||"
}
theBass = {
 <af, af>4
 \tuplet 3/2 {<g, g>8 af8 bf8}
 <c c'>4
 g4
  \bar "||"
}

\include "include/dual.ly"
