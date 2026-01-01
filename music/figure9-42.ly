\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7.3-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  d''8 c d f  d c a d | c4 a8 f8~ f2
  \bar "||"
}
theBass = {
  <ef~ g~ b~ d'~>1 |
  <ef g b d'>1
  \bar "||"
}

\include "include/dual.ly"
