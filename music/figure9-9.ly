\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \tuplet 3/2 {r8 b' cs} e cs~ cs4~ \tuplet 3/2 {cs8 b8 cs8} |
  \tuplet 5/4 {fs8 e b cs a} r2
  \bar "||"
}

\include "include/treble.ly"
