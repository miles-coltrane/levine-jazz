\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode { c1:maj7 }
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <df' f' af'>1 \bar "||"
}
theBass = {
  <c e g b>1
  \bar "||"
}

\include "include/dual.ly"
