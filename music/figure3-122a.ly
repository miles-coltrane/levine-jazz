\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode { }
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 3
  g4 gs as b cs d e f g^\markup\right-align{\smaller "G half-step/whole step diminished scale"}
  \bar "||"
}

\include "include/treble.ly"
