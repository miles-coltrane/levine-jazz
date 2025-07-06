\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:dim | a:min7 | d:7
}
theTreble = \relative {
  g8 bf df e g4 fs8 <c~ e~ a~>|
  \tieUp <c e a~>1 |
  <c e a>
  \bar "||"
}
theBass = {
  bf,2.~ bf,8 <a,~ g~>8 |
  <a, g>1 | <d fs>1
  \bar "||"
}

\include "include/dual.ly"
