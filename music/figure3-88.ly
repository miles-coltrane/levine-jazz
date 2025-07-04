\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | a1:7 | af2:maj7 df2:7.11+ | c:7
}
theTreble = {
  <c' d' g'>8 <c' d' g'>8 r4 r2 |
  r8 <<
      { fs'4. e'8 fs'4 }
      \new Voice {\voiceTwo <b~ cs'~>4. <b cs'>4.}
     >>
  <bf~ c'~ ef'~>8 |
  <bf c' ef'>4. <b~ ef'~ g'~>8 <b ef' g'>4. <bf~ d'~ g'~>8 |
  <bf d' g'>1
  \bar "||"
}
theBass = {
  <bf, af>8 <bf, af>8 r4 r2|
  r8 <a,~ g~>4. <a, g>4. <af,~ g~>8|
  <af, g>4. <df~ f~>8 <df f>4. <c~ e~>8|
  <c e>1
  \bar "||"
}

\include "include/dual.ly"
