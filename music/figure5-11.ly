\version "2.24.4"
\include "include/prologue.ly"

% Put Your Little Foot Right Out, Miles Davis, In Person Saturday Night At The Blackhawk
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 gf8:/c af8:/c gf2:/c
}
theTreble = \relative {
  r8 <df' gf bf>8 <ef af c>8 <df~ gf~ bf~ df~>8 <df~ gf~ bf~ df~>2 |
  <df gf bf df>1
  \bar "||"
}
theBass = {
  <c,~ c~>1|
  <c, c>1|
  \bar "||"
}

\include "include/dual.ly"
