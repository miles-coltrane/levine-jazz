\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  s1 | c1:7.9-
}
theTreble = \relative {
  a'4 bf cs e
  \bar "||"
  a16 bf cs e  cs bf a cs  bf a e bf'  a e cs8
  \bar "||"
}
theBass = {
  s1
  \bar "||"
  <bf cs' e' a'>1
  \bar "||"
}

\include "include/dual.ly"
