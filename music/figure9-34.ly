\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 5/4
theChords = \chordmode {
  d1:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \override Timing.TimeSignature.stencil = ##f
  e'4 fs gf_\markup{♯4} b cs
  \bar "||"
}
theBass = {
  <d fs a cs'>1 s4
  \bar "||"
}

\include "include/dual.ly"
