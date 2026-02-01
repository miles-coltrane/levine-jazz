\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1/df
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  <c' e g>1 |
  \time 8/4
  f4 g af bf c df e f^\markup\center-align{"F harmonic minor scale"}
  \bar "||"
}

theBass = {
  <df f af>1 |
  \time 8/4 s1 s1
  \bar "||"
}

\include "include/dual.ly"
