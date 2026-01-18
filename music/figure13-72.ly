\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7 | g1:7.11+ | g2:min7 c2:7 | f1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {
      d''2\rest c''4 c''4 |
      cs''4 e''4 d''4 a'4 |
      c''4 bf'4 d'4 e'4
    }
    \new Voice {\voiceTwo
      <c' fs'>1 |
      <f' a'>1 |
      <f' a'>2 bf2
    }
  >> |
  <a f'>1
  \bar "||"
}
theBass = {
  d1 |
  <g b>1 |
  <g bf d'>2
  <c e>2 |
  f,1
  \bar "||"
}

\include "include/dual.ly"
