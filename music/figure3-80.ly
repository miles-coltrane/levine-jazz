\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d\breve:sus7.9-
}
theTreble = \relative {
  <d'~ ef~ g~ b~>1 |
  <d ef g b>1 |
  \bar "||"
}
theBass = {
  r8 <d, d>4 r8 <d, d>2 |
  <d, d>4. <d,~ d~>8 <d, d>2 |
  \bar "||"
}

\include "include/dual.ly"
