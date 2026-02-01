\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:maj7 af2:maj7 | e2:maj7 c2:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  r8 <d' e' g' b'>4. <bf c' ef' g'>2 |
  <fs gs b ds'> s2
  \bar "||"
}
theBass = {
  r8 c4. af,2 |
  e,2 <c, d e g b>2
  \bar "||"
}

\include "include/dual.ly"
