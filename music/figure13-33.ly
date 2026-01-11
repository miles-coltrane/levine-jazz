\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:min7.3-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 c''8 a8
  \bar "||"
  <e g c>1
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  <f af>1
  \bar "||"
}

\include "include/dual.ly"
