\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c2:7 | a4:alt d4:alt g4:7 g4:alt
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    { \stemUp d'8 bf' g' f' e'4 d''4 }
    \new Voice { \voiceTwo bf2 <bf d'>2 }
  >> |
  <df' f' c''>4 <c' f' bf'> <b e' a'> <bf ef' af'>
  \bar "||"
}
theBass = {
  <g, f>2 c2 |
  <a, g>4 <d fs>4 <g, f>4 <c e>4
  \bar "||"
}

\include "include/dual.ly"
