\version "2.24.4"
\include "include/prologue.ly"

% Moment's Notice, John Coltrane, Blue Train
theTempo = 230
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c:alt | af:min7 df:7 | gf1:maj7
}
theTreble = {
  <bf d' g'>2 <bf ef' af'>2 |
  <cf' gf' bf'>2 <cf' ef' cf''>2 |
  <ef' af' df''>1
  \bar "||"
}
theBass = {
  <g, f>2  <c e>2 |
  <af, gf>2 <df f>2 |
  <gf, f>1
  \bar "||"
}

\include "include/dual.ly"
