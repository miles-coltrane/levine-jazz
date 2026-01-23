\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  f4:min7 e4:min7 ef4:min7 | d4:min7 af8:7 g4.:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <ef' g' bf'>4 <d' fs' a'> <df' f' af'>4 |
  <c' e' g'>4 <c' f' af'>8 <b~ e'~ g'~>8 <b e' g'>4
  \bar "||"
}
theBass = {
  <f af c'>4 <e g b> <ef gf bf> |
  <d f a>4 <af, gf>8 <g,~ f~>8 <g, f>4
  \bar "||"
}

\include "include/dual.ly"
