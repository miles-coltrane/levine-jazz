\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1/d | g1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.6
  ef''16 c ef af  f ef c f  ef c bf ef  c bf af c |
  b1
}
theBass = {
  <d ef af c'>1 |
  <d g b>1
  \bar "||"
}

\include "include/dual.ly"
