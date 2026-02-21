\version "2.24.4"
\include "include/prologue.ly"

% Mirror Mirror, Joe Henderson, Mirror Mirror
theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  c2.:maj7 | b:7.11+ | bf:maj7 | a:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <b d' e' g'>2. |
  <df' f' af'>2. |
  <c' d' f' a'>2. |
  <c' g' d''>2.
  \bar "||"
}
theBass = {
  c2. | <b, a> | <bf, a> | <a, e>
  \bar "||"
}

\include "include/dual.ly"
