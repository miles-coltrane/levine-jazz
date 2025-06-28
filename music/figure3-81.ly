\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  g2.:maj7.5+ | fs:sus7.9- | e:min7 | ef:alt | cs:min7.5-
}
theTreble = {
  <fs b ds' fs'>2. |
  <g b ds' fs'>2. |
  <g b d' fs'>2. |
  <g b cs' fs'>2 b4 |
  <g b ds' fs'>2. |
  \bar "||"
}
theBass = {
  g,2. | fs, | e, | ef, | cs,
  \bar "||"
}

\include "include/dual.ly"
