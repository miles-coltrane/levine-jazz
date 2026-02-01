\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/1
theChords = \chordmode {
  f1:maj7 d:maj7 b:maj7 af:maj7 f:maj7 a:maj7 df:maj7 f:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  f''1 d'' b' af' f' a' df'' f''
  \bar "||"
}

\include "include/treble.ly"
