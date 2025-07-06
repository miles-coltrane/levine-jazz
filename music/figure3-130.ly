\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
  f1:dim
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  f'4
  % TODO: improve markup of chord names
  g^\markup{\smaller (also A♭{\super o},B{\super o}, D{\super o})}
  af bf b cs d e f^\markup\right-align{\smaller "F whole step/half-step diminished scale"}
  \bar "||"
}
theName = \markup {""}

\include "include/scale.ly"
