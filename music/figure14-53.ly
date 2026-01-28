\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 | d2:min7 g2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp\tieUp
      c''8 b'8 g'2  c''8 b'8 |
      g'2~ g'8 a'8 b'8 c''8
    }
    \new Voice {\voiceTwo
      s2 <b e'>2 |
      <c' e'>2 <b e'>2
    }
  >>
  \bar "||"
}
theBass = {
  <d f a c'>2 <g, f>2 | <d f a>2 <g, f>2
  \bar "||"
}

\include "include/dual.ly"
