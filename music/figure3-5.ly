\version "2.24.4"
\include "include/prologue.ly"

theTempo = 190
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:maj7 d:min | g:min7 c:7 | f1:maj7
}
theTreble = \relative {
  f4 c' f g | a bf8 a g a bf c~ | c1
  \bar "||"
}

\include "include/treble.ly"
