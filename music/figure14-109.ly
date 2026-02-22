\version "2.24.4"
\include "include/prologue.ly"

% Satin Doll, Duke Ellington
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 | d2:min7 g2:7 | e2:min7 a:7 | e2:min7 a:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  <<
    {\stemUp
      a'8 g'8 a'4 g'8 a'4. |
      r8 <c' f' a'>4. g'8 a'4. |
      b'8 a'8 b'4 a'8 b'4. |
      r8 <d' g' b'>4. a'8 b'4.
    }
    \new Voice {\voiceTwo
      <c' f'>2 <b e'>2 |
      s2 <b e'>2 |
      <d' g'>2 <cs' fs'>2 |
      s2 <cs' fs'>2
    }
  >>
  \bar "||"
}
theBass = {
  d,2 <g, f>2 |
  d,2 <g, f>2 |
  e,2 <a, g>2 |
  e,2 <a, g>2
  \bar "||"
}

\include "include/dual.ly"
