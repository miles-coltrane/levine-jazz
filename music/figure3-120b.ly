\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  f'4 g af as b cs d e f^\markup\right-align{\smaller "F whole step/half-step diminished scale"}
  \bar "||"
}

\include "include/treble.ly"
