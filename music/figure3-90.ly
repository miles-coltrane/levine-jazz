\version "2.24.4"
\include "include/prologue.ly"

% Little Girl Blue, Richard Rodgers
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2. | c1:7.11+ | f:maj7
}
theTreble = {
  \partial 2. s8 c'8 d' e' f' a' \bar "||"
  <<
    {
      c''4. bf'8 fs'4. g'8 |
      \tuplet 3/2 {bf'8 a'8 f'8}
    }
    \new Voice {\voiceTwo e'1 e'4}
  >> c'2.
  \bar "||"
}
theBass = {
  \partial 2. s8 r8 r2 \bar "||"
  <c bf>1 | f,1
  \bar "||"
}

\include "include/dual.ly"
