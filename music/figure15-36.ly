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
  d''16 c d af'  f d c f   d c af d   c af f c' | b1
}
theBass = {
  <d ef af c'>1 |
  <d g b>1
  \bar "||"
}

\include "include/dual.ly"
