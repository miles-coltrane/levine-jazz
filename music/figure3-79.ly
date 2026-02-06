\version "2.24.4"
\include "include/prologue.ly"

% Who Can I Turn To, Mulgrew Miller, Time And Again
theTempo = 65
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2.:min7 bf:sus7.9-
}
theTreble = {
  f''4 f''8 ef'' f''4 <cf'~ ef'~ g'~ bf'~>4 |
  <cf' ef' g' bf'>1
  \bar "||"
}
theBass = {
  r2 r4 <bf,~ bf~>4 |
  <bf, bf>1
  \bar "||"
}

\include "include/dual.ly"
