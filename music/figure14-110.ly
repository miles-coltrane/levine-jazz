\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 | ef2:min7 af2:7 | e2:min7 a:7 | f2:min7 bf:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  <<
    {\stemUp
      a'8 g'8 a'4 g'8 a'4. |
      r8 <df' gf' bf'>4. af'8 b'4. |
      b'8 a'8 b'4 a'8 b'4. |
      r8 <df' af' c''>4. bf'8 c''4.
    }
    \new Voice {\voiceTwo
      <c' f'>2 <b e'>2 |
      s2 <c' f'>2 |
      <d' g'>2 <cs' fs'>2 |
      s2 <df' g'>2
    }
  >>
  \bar "||"
}
theBass = {
  d,2 <g, f>2 |
  r8 ef,4. <af, gf>2 |
  e,2 <a, g>2 |
  r8 f,4. <bf, af>2
  \bar "||"
}

\include "include/dual.ly"
