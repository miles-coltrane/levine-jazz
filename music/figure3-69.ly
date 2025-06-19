\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | bf1:maj7.3- | r1 | af:maj7.3-
}
theTreble = \relative {
  \partial 4 f'4 \bar "||"
  <df~ f~ a~ c~>1 |
  <df f a c>4. bf'8 r8 f4 df8 |
  <cf ef f>1
  \bar "||"
}
theBass = {
  \partial 4 r4 \bar "||"
  <bf,~ a~>1 | <bf, a>1 | <af, g> 1
  \bar "||"
}

\include "include/dual.ly"
