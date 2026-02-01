\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 7/1
theChords = \chordmode {}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  b'1 d'' af' f' b' d'' b'
  \bar "||"
}

\include "include/treble.ly"
