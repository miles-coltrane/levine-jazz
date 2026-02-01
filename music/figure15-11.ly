\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2 d2:min7 | g2:min7 c2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <g a c'>2 <a c' f'> |
  <<
    {\stemUp
      d'4 g'2 e'4 |
      c''1~ |
      c''1
    }
    \new Voice {\voiceTwo
      bf1 |
      <c' g'>2 <c' fs'>2 |
      <f'bf'>2 <e' bf'>2
    }
  >> |
  <g a c'>2

  \bar "||"
}
theBass = {
  f,2 d, | g, c, | a, d, | g, c,| f,2
  \bar "||"
}

\include "include/dual.ly"
