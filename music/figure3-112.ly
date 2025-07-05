\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  % TODO: add list of chord names
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  d'4 e' f' g' a' b' cs'' d''^\markup\right-align{\smaller "D melodic minor scale"}
  \bar "||"
}

\include "include/treble.ly"
