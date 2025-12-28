\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r4 | ef1:6 | s | d:min7.5-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 4 bf4
  \bar "||"
  <ef, g c>4
  <f af d>4
  <g bf ef>4
  <af b f'>4 |
  <bf c g'>4
  <c ef bf'>4
  <af b f'>4
  <g bf ef>4 |
  <af c f>1
  \bar "||"
}

theBass = {
  \partial 4 r4 \bar "||"
  bf,4 b, c d | ef g d c | d1
  \bar "||"
}

\include "include/dual.ly"
