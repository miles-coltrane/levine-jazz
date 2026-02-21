\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | r| d1:7.11+ | r | d:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <b~ d'~ e'~ g'~>1 |
  <b d' e' g'>8 e''4. g'4 c''4 |
  e''8 <e'~ gs'~>8 <e'~ gs'~>2. |
  <e' gs'>1  |
  <c' f' a'>1
  \bar "||"
}
theBass = {
  c1~ |
  c1 |
  r8 <d~ fs~ c'~>8 <d~ fs~ c'~>2. |
  <d fs c'>1 |
  d1
  \bar "||"
}

\include "include/dual.ly"
