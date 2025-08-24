\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 f2:min7 | ef1:min7
}
theTreble = \relative {
  r8 d'' \tuplet 3/2 {bf8 a8 g8} c8 af8 g8 f8 | bf8 gf8 f8 ef8
  \bar "||"
}

\include "include/treble.ly"
