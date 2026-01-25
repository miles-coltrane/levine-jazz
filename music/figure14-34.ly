\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:min7.5- e2:alt | a:min7.5- d2:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  r8 <d' f' b'>4.
  <<
    {\stemUp c''4 d''4}
    \new Voice {\voiceTwo <d' g'>2}
  >> |
  <g' c'' ef''>2 <c' ef' fs'>2
  \bar "||"
}
theBass = {
  r8 <b, a>4. <e gs>2 |
  <a, g>2 <d fs>2
  \bar "||"
}

\include "include/dual.ly"
