\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | fs1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 8 fs'16 gs | as4 ds8 cs8~ cs2~ | cs2~ cs8 as gs as
  \bar "||"
}

\include "include/treble.ly"
