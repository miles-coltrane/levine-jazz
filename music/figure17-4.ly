\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = f
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | gf1:maj7.11+ | f1:maj7 | ef:maj7.11+ | d:min7 | ef:maj7.11+ | d:min7 | bf:min7 |
  a:min7 | bf:maj7 | e2:min7 a2:7 | d1:min7 | g1:min7 | gf1:maj7.11+ | f1:min7 | gf:maj7.11+
}
theTreble = \relative {
  a'1 | af | a| a| a| a| a| af | \break
  a| a| a2 a2 | a1 |a | af af af|
  \bar "||"
}

\include "include/treble-aligned.ly"
