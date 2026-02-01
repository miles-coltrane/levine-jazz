\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | ef:7.11+ | d:maj7 | c:7.11+ | b:maj7 | a:7.11+ | af:maj7 | g2:min7 c2:7 |
  f1:maj7 | bf:7.11+ a:maj7 | d:7.11+ | df:maj7 |fs2:min7 b2:7.11+ | g1:min7 c1:7
}
theTreble =  {
  <d' g' c''>1 |
  <f' a' c''>
  <b e' a'> |
  <d' fs' a'> |
  <gs cs' fs'> |
  <b ds' fs'> |
  <bf c' ef'>
  <bf d' f'>2 <bf d' e'>2 | \break
  <g a c' e'>1 |
  <c' e' g'> |
  <gs b cs' e'> |
  <e' gs' b'> |
  <bf ef' af'> |
  <a cs' e'>2  <a cs' ds'>2 |
  <bf d' f'>1 |
  <bf d' e'>1
  \bar "||"
}
theBass = {
  <f a>1 |
  <ef g df'> |
  <d fs>
  <c e bf>
  <b, ds> |
  <a, cs g> |
  <af, g> | g,2 c2 | \break
  f,1 |
  <bf, d af> |
  a, |
  <d fs c'>
  <df f>
  fs,2 b,2 |
  g,1 |
  c1
  \bar "||"
}

\include "include/dual-aligned.ly"
