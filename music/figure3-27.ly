\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:sus7
}
theTreble = \relative {
  s4. <d'~ g~ b~ e~>8 <d g b e>2
  \bar "||"
}
theBass = \relative {
  \set Staff.pedalSustainStyle = #'mixed
  a,8\sustainOn e'8 b'8 \noBeam s8 s4 s4\sustainOff
  \bar "||"
}

\include "include/dual.ly"
