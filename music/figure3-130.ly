\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
  f1:dim % TODO: add extra chord names
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  f'4 g af bf b cs d e f^\markup\right-align{\smaller "F whole step/half-step diminished scale"}
  \bar "||"
}
theName = \markup {""}

\include "include/scale.ly"
