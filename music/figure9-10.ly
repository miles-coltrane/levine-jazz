\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7
}
theTreble = \relative {
  r16 cs'' b cs fs8 cs16 b e cs b a g b a e |
  a e fs cs e b cs fs, b a e8~ e4
  \bar "||"
}

\include "include/treble.ly"
