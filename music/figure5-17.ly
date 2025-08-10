\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2.:/c c4:maj7 | bf1:7
}
theTreble = \relative {
  <b ds fs>2. <b d e g>4 |
  <d g c>1
  \bar "||"
}
theBass = {
  c2. c4 | <bf, af>1
  \bar "||"
}

\include "include/dual.ly"
