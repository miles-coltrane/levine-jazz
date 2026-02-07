\version "2.24.4"
\include "include/prologue.ly"

% Sophisticated Lady, Duke Ellington
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
 g2:maj7 gs:dim | a1:min7
}
theTreble = {
  <fs b d'>2 <f af b d'>2 |
  <g c' e'>1
  \bar "||"
}
theBass = {
  g,2 gs, | a,1
  \bar "||"
}

\include "include/dual.ly"
