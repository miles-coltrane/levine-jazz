\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7 | ef:7/f
}
theTreble = \relative {
  <ef'~ g~ a~ c~>2. <ef g a c>8 <df~ f~ g~ c~>8 |
  <df f g c>1
  \bar "||"
}
theBass = {
  <f,~ f~>2.
  <f, f>8
  <f,~ f~>8 |
  <f, f>1
  \bar "||"
}

\include "include/dual.ly"
