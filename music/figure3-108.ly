\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7.3- | g:sus7.9- | af:maj7.5+ | bf:7.11+ | d:min7.5- | e:alt
}
theTreble = {
  <af c' e' g'>1
  <af c' e' g'>1
  <af c' e' g'>1
  <af c' e' g'>1
  <af c' e' g'>1
  <af c' e' g'>1
  \bar "||"
}
theBass = {
  f,1 | g, | af, | bf, | d, | e,
  \bar "||"
}
theLyrics = \lyricmode {
  "I" "II" "III" "IV" "VI" "VII"
}

\include "include/dual+lyrics.ly"
