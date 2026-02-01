\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:sus4
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \set fingeringOrientations = #'(right)
  <c'\root f\fourth bf\seventh>1
  \bar "||"
}

\include "include/treble.ly"
