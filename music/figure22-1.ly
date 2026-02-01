\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  c''4^\markup\left-align{\small "forward clave (also known as) 3 & 2"} r8 c4 r8 c4 |
  r4 c4 c4 r4
  \bar "||"
}

\include "include/treble.ly"
