\version "2.24.4"
\include "include/prologue.ly"

theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:7/df a2:7
}
theBass = {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 5
  <df, g, e a>2
  <a, cs e g>2
  \bar "||"
}

\include "include/bass.ly"
