\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7
}
theTreble = \relative {
  a''8 g e d  g e d c | e d c a  d c a g | c a g e  a g e d~ | d1
  \bar "||"
}

\include "include/treble.ly"
