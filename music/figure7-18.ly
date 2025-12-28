\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  bf'8a af g f ef d c| bf1
  \bar "||"
}

\include "include/treble.ly"
