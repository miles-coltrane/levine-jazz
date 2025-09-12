\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7 | ef:min7 | d:min7 | e:7.9-
}
theTreble = {
  e'8 b'8 r4 r2 |
  ef'8 bf'8 r4 r2 |
  e''8 c''8 r4 r2 |
  gs'8 b'8 r4 r8 f''8 e''4
  \bar "||"
}

\include "include/treble.ly"
