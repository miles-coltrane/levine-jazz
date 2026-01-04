\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5

  \partial 8 df''8~ |
  df8 c4 bf4 af4 f8~ |
  f8 ff4 ef4 df4 bf8 |
  d f bf2
  \bar "||"
}

\include "include/treble.ly"
