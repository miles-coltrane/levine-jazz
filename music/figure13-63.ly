\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:alt | r1 | f:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  c''4. g'4. d'4~ | d'4. g'4. c''4 | <c' e' g'>2
  \bar "||"
}
theBass = {
  <e~ gs~>1 | <e gs>1 | <f a>2
  \bar "||"
}

\include "include/dual.ly"
