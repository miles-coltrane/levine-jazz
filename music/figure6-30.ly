\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | c1:min | r1 | d:min7.5-
}
theTreble = \relative {
  \partial 4 r16 <>[ g' a g] \bar "||"
  c16 c16 c8  c4  c8. c16 r8 c16 c16 |
  c16 c16 c8  c4  c16 c16 c16 c16  c16 c16 c16 c16 |
  c16 c16 c8 c2.
  \bar "||"
}

\include "include/treble.ly"
