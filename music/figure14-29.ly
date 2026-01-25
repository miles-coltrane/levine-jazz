\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:maj7 a2:min7 |
  b2:min7 c2:maj7 |
  d2:7 e2:dim |
  f2:min7 bf2:7.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 1.8
  b4 g c' a |
  d' b e' c' |
  fs' d' g' e' |
  <ef' af'> f' <d' e' bf'>2
  \bar "||"
}
theBass = {
  <g, fs>2 <a, g>2 |
  <b, a>2 <c b>2 |
  <d c'>2 <e df'>2 |
  f2 <bf, af>2
  \bar "||"
}

\include "include/dual.ly"
