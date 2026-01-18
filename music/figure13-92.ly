\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:min7 ~ bf1:7.9- | ef1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \set fingeringOrientations = #'(right)
  \partial 4 f'4 |
  \tieUp
  <af c' g'~>1
  <<
    {\stemUp g'4 f'4 f'4 g'4}
    \new Voice {\stemDown bf1 }
  >> |
  <f g bf\fifth>1
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <f, ef>1 |
  <bf, d af>1 |
  <ef, bf,>1
  \bar "||"
}

\include "include/dual.ly"
