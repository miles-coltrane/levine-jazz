\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | cf1/f
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.6
  \partial 4 r16 c''16 f g |
  gf bf ef df   f ef cf gf   df' cf af8~ af4
}
theBass = {
  \partial 4 r4 |
  <f gf cf' ef'>1
  \bar "||"
}

\include "include/dual.ly"
