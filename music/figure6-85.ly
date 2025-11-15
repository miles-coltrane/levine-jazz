\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  as''4 gs as | b as gs | as b as | gs as b
  \bar "||"
}

\include "include/treble.ly"
