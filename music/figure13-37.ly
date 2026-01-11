\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:min7 | f:maj7.3- | f:min7 | f:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 c''8 af
  \bar "||"
  c1~ |
  c4 bf8 af8 bf8 c4 af8 |
  f8 c8~ c2. |
  c1
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  <f,~ f>1 |
  <f,~ e>1 |
  <f,~ ef> |
  <f, d>
  \bar "||"
}

\include "include/dual.ly"
