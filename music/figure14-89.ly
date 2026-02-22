\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Harry Warren
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | r1 | fs2:min7 b2:7 | e2:min7 a2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  <<
    {\stemUp\tieUp
      d''4 c''4 e'2~ |
      e'2 c'8 e'8 g'8 c''8 |
      b'1 |
      r2 a'4. e'8
    }
    \new Voice {\voiceTwo
      <e' a'>2 b2~ |
      b1 |
      <a e'>2 ds'2 |
      <g d'>2 cs'2
    }
  >>
  \bar "||"
}
theBass = {
  <c b>2 <c~ e~>2 |
  <c e>1 |
  fs,2 <b, a>2 |
  e,2 <a, g>2
  \bar "||"
}

\include "include/dual.ly"
