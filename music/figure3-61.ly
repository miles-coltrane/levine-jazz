\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7 | g:7 | c:maj7
}
theTreble = \relative {
  d'16 e f g  a b c d  c b a g  f e d8 |
  g16 a b c  d e f g  f e d c  b a g8 |
  c,16 d e f  g a b c  b a g f  e d c8
  \bar "||"
}

\include "include/treble.ly"
