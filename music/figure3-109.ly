\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7.11+ | e:maj7 | b:alt | e:maj7
}
theTreble = {
  <ef'~ g'~ b'~>2 <ef' g' b'>8 b'8 a' <ds'~ gs'~ b'~>8 |
  <ds' gs' b'>1 \bar "||"
  <d'~ g'~ b'~>2 <d' g' b'>8 b'8 a' <ds'~ gs'~ b'~>8 |
  <ds' gs' b'>1 \bar "||"
}
theBass = {
  <f a>2. r8 <e~ gs~>8 | <e gs>1 \bar "||"
  <b, ds a>2. r8 <e~ gs~>8 | <e gs>1 \bar "||"
}

\include "include/dual.ly"
