\version "2.24.4"
\include "include/prologue.ly"

% Moment's Notice, John Coltrane, Blue Train
theTempo = 245
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:alt c2:alt af2:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <b ef' g'>2 <bf ef' af'>2 | <cf' ef' bf'>2
  \bar "||"
}
theBass = {
  <g, f>2 <c e>2 | <af, gf>2
  \bar "||"
}

\include "include/dual.ly"
