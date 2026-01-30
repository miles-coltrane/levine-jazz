\version "2.24.4"
\include "include/prologue.ly"

theTempo = 230
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:maj7 f4:min7 g4:min7 | af4.:min7 r8 df2:7
}
theTreble = \relative {
  r8 <g d' g>4. <af ef' af>4 <bf f' bf>4 |
  <cf gf' bf>4. <cf~ ef~ af~>8 <cf ef af>2
  \bar "||"
}
theBass = \relative {
  r8 ef,4. f4 g4 | <af gf'>4. <df~ f~>8 <df f>2
  \bar "||"
}

\include "include/dual.ly"
