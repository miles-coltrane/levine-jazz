\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode { }
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 3
  as4 b cs d e f g gs as^\markup\right-align{\smaller "A♯ half-step/whole step diminished scale"}
  \bar "||"
}

\include "include/treble.ly"
