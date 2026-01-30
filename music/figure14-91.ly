\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7  | c1:7 | f1 | f1:min
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.7
  <<
    {\stemUp\tieUp
      c''4 c''4 c''4 c''4 |
      d''2. e''4
    }
    \new Voice {\voiceTwo
      <c' g'>1 |
      <e' a'>1
    }
  >> |
  <e' a' d''>8 c''8 a'8 f'8 d'2~ |
  <af c' d'>2 e'4 f'4
  \bar "||"
}
theBass = {
  <a, g>1 |
  <c bf>1 |
  <f a>1|
  <f, d>1
  \bar "||"
}

\include "include/dual.ly"
