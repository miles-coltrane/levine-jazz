\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  e1:7 | r | ef:7 | r | d:7 | df:7 | c:7 | b:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <gs' cs e> |
  <gs cs e> |
  <g c ef> |
  <g c ef> |
  <fs b d> |
  <f bf df> |
  <e a c> |
  <ds gs b>
  \bar "||"
}
theBass = {
  <e d'> |
  <e d'> |
  <ef df'> |
  <ef df'> |
  <d c'>
  <df cf'> |
  <c bf> |
  <b, a>
  \bar "||"
}

\include "include/dual.ly"
