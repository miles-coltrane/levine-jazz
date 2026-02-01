\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:maj7 ef2:7 | af2:maj7 df2:7.11+ | c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 4
  <b d' e' g'>2 <c' df' f' g'>2 |
  <bf c' ef' g'>2 <cf' ef' g'>2
  \bar "||"
  <b d' e' g'>1
  \bar "||"
}
theBass = {
  <c e>2 <ef g>2 |
  <af, f>2 <df f>2
  \bar "||"
  <c e>1
  \bar "||"
}

\include "include/dual.ly"
