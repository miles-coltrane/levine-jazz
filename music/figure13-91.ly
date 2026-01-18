\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:min7 d2:7 | g2:min7 c2:7 | gf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp e''2. d''4}
    \new Voice {\stemDown <g' c''>2 fs'2 }
  >> |
  <bf f' a'>2 <e' a' c''>2 |
  <af~ df'~ f~>1 |
  <af df' f>1
  \bar "||"
}
theBass = {
  <a, g>2 <d c'>2 |
  <g, f>2 <c bf>2 |
  <bf,~ ef~>1 |
  <bf, ef>1 |
  \bar "||"
}

\include "include/dual.ly"
