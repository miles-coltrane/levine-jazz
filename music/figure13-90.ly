\version "2.24.4"
\include "include/prologue.ly"

% Have You Met Miss Jones, Richard Rodgers
theTempo = 130
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:min7 d2:7 | g2:min7 c2:7 | f1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {e''1 | f''4\rest d''4 a'4 g'4}
    \new Voice {\voiceTwo \stemDown <g' c''>2 fs'2 | <f' bf'>2 e'2}
  >> |
  <a~ c'~ d'~ f'~>1 |
  <a c' d' f'>1
  \bar "||"
}
theBass = {
  <a, g>2 <d c'>2 |
  <g, f>2 <c bf>2 |
  f,1~ |
  f,1
  \bar "||"
}

\include "include/dual.ly"
