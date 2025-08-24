\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:maj7 | a:maj7 | a:alt
}
theTreble = \relative {
  r2 \tuplet 3/2 {r8 gs''8 b8} fs8 cs8 |
  \tuplet 3/2 {r8 gs'8 b8} fs8 cs8
  \tuplet 3/2 {r8 gs'8 b8} fs8 cs8 |
  \tuplet 3/2 {r8 g'8 c8} ef,8 df8
  \tuplet 3/2 {r8 g8 c8} ef,8 df8
  \bar "||"
}

\include "include/treble.ly"
