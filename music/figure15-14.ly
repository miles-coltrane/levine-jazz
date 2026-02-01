\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7 | a2:min7 d2:7 | g1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <<
    {\stemUp
      bf8 g8 af8 bf8~ bf4 bf8 c'8
    }
    \new Voice {\voiceTwo
      s4. <f g>8 <f g>2
    }
  >> |
  d'8 b8 c'8 d'8 r8 ds'8 e'8 <b fs'>8 |
  r8 d'8 c'8 <fs~ b~ d'~>8 <fs b d'>2
  \bar "||"
}
theBass = {
  ef,1 |
  <a, g>4. <d~ fs~>8 <d fs>4. g,8~ |
  g,1
  \bar "||"
}

\include "include/dual.ly"
