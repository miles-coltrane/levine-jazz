\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g4:7 af8:7
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 4.
  <b d'>8 e'8 <bf c'>8
  | r1
  \bar "||"
}
theBass = {
  \partial 4.
  <g, f>4 <af, gf>8
  | r1
  \bar "||"
}

\include "include/dual.ly"
