\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 g2:7.9- | b1/c
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \set fingeringOrientations = #'(right)
  g2 <af b f'>4. <f~ b~ ds'~>8 | <f b ds'>1
  \bar "||"
}
theBass = {
  g,2 <g, f>4. c8~ | c1
  \bar "||"
}

\include "include/dual.ly"
