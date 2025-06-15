\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7.5- g:alt | c:maj7.3-
}
theTreble = \relative {
  <c' e>8 <d f> <e g> <cf~ ef~ bf'~> <cf ef bf'>4 af'8 <b,~ d~ g~>8 |
  <b d g>1
  \bar "||"
}
theBass = {
  <d af>4. <g,~ f~>8 <g, f>4. <c~ ef~>8 |
  <c ef>1
  \bar "||"
}

\include "include/dual.ly"
