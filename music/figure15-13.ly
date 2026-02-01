\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2 b2:7 | e2:maj7 g2:7 | c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <d' g' c''>2
  <<
    {\stemUp
      b'4 a'4
    }
    \new Voice {\voiceTwo
      <ds' gs'>2
    }
  >> |
  <b ds' gs'>2
  <<
    {\stemUp
      g'4 f'4
    }
    \new Voice {\voiceTwo
      <b e'>2
    }
  >> |
 <b e'>1
  \bar "||"
}
theBass = {
  <c e a>2 <b, a>2 |
  e,2 <g, f>2 |
  c,1
  \bar "||"
}

\include "include/dual.ly"
