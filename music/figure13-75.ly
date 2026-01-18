\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.5+ | r1 | c1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  <<
    { \stemUp <ef''~\sharpfive>1 | ef''4 ef''4 ef''4 d''4 }
    \new Voice { \tieDown <f'~ b'~>1 | <f' b'>1 }
  >> |
  <ef' bf' f''>1
  \bar "||"
}
theBass = {
  <g~ b~>1 |
  <g b>1 |
  <c g>1
  \bar "||"
}

\include "include/dual.ly"
