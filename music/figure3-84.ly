\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  \set chordChanges = ##f % show chords when they don't change
  g1:/ef |
  g:/ef
}
theTreble = \relative {
  <g' b d>1 |
  <d g b>1
  \bar "||"
}
theBass = {
   ef,1 | ef,1
  \bar "||"
}

\include "include/dual.ly"
