\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode { }
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 3
  e'4 f g gs as b cs d e^\markup\right-align{\smaller "E half-step/whole step diminished scale"}
  \bar "||"
}

\include "include/treble.ly"
