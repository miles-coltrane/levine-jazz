\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf4:6 | c1:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  \partial 4 <gs cs' fs'>4 |
  <a d' g'>1
  \bar "||"
}
theBass = {
  \partial 4
    ds4 | e1
  \bar "||"
}

\include "include/dual.ly"
