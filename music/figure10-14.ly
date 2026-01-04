\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  c''4.
  \tuplet 3/2 {g16 gf f} ef8 c8 r4
  \bar "||"
}

\include "include/treble.ly"
