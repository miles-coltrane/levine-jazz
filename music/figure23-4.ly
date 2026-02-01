\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  g1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  <a d' fs' b'>1 g'1_\markup\center-align\center-column{"horn player" "or singer"}
  \bar "||"
}
theBass = {
  <g, e>1_\markup\center-align{"pianist"} s1
  \bar "||"
}

\include "include/dual.ly"
