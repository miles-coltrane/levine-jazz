\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:maj7 e2:min7 |
  d2/fs g4:min7 c4:7 |
  fs4:min7 b4:7 e4:min7 a4:7 |
  d1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <fs cs'>2 <g d'>2 |
  <a d'>2 <bf f'>4 <bf e'>4 |
  <a e'>4 <a ds'>4 <g d'>4 <g cs'>4 |
  <fs cs'>1
  \bar "||"
}
theBass = {
  d,2 e,2 |
  fs,2 g,4 c4 |
  fs,4 b,4 e,4 a,4 |
  d,1
  \bar "||"
}

\include "include/dual.ly"
