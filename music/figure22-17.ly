\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  c''4 e8 g,8~ g8 a4 c8~ |
  c8 e4 g,8~ g8 a4 c8
  \bar "||"
}

\include "include/treble.ly"
