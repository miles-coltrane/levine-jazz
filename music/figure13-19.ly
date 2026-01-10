\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  \override Score.SpacingSpanner.spacing-increment = 3
  \set chordChanges = ##f % show chords when unchanged
  bf1:7 ef:7 bf:7 bf:7 ef:7
}
theTreble = \relative {
  s1 s1 s1 s1 s1 \bar "||"
}

\include "include/treble.ly"
