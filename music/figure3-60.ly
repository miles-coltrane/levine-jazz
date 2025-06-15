\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | c1:maj7
}
theTreble = \relative {
  <f' c'>2. <f b>4 |
  <e b'>1
  \bar "||"
}
theBass = {
  d2 g,2 | c1
  \bar "||"
}

\include "include/dual.ly"
