\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:7/g ef2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 5
  <as ds'>2 s2
  \bar "||"
}
theBass = {
  <g, cs>2 <ef g bf df'>2
  \bar "||"
}

\include "include/dual.ly"
