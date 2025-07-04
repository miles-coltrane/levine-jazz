\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | r1
}
theTreble = \relative {
  \partial 8 bf'8~ |
  bf8 fs d bf s2
  \bar "||"
}

\include "include/treble.ly"
