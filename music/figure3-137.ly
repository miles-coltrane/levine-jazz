\version "2.24.4"
\include "include/prologue.ly"

% Skylark, Kenny Barron, Maybeck Recital Hall Series
theTempo = 70
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:maj7 a:dim | bf:min7
}
theTreble = \relative {
  <f' bf ef>2
  <fs a c ef> |
  <f af df ef>1
  \bar "||"
}
theBass = {
  <af, g>2 <a, fs> | <bf, af>1
  \bar "||"
}

\include "include/dual.ly"
