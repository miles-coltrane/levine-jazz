\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7 | g:7 | c:maj7
}
theTreble = \relative {
  d'8 e f g a g f e |
  g a b c d c b a |
  c, d e f g f e d |
  c1
  \bar "||"
}

\include "include/treble.ly"
