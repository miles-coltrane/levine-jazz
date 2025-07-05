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
  g'4 a' bf' c'' d'' e'' fs'' g''^\markup\right-align{\smaller "G melodic minor scale"}
  \bar "||"
}

\include "include/treble.ly"
