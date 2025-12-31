\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | ef1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 \tuplet 3/2 {bf'8 c d} |
  \stemDown \tuplet 3/2 {c bf g} \stemUp \tuplet 3/2 { f d c~} c2
  \bar "||"
}

\include "include/treble.ly"
