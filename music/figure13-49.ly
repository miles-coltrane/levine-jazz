\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Harry Warren
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:7 | d:min7 | g:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {
      \stemUp
      c''4 c'' c'' c'' |
      b' a' b' c'' |
      d''4. g'8 g'2 |
      r2 e''4. d''8
    }
    \new Voice { \voiceTwo
      c'1 |
      <c' e'>1
      e'1 |
      <b e>1
    }
  >>
  \bar "||"
}
theBass = {
  <a, g>1 |
  <d fs>1 |
  <d f a c'>1|
  <g, f>1
  \bar "||"
}

\include "include/dual.ly"
