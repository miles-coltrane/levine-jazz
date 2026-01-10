\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 8 d''8~ |
  d8 fs, g a bf c d ef~ | ef ef df cf bf af gf4
  \bar "||"
}

\include "include/treble.ly"
