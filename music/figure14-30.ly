\version "2.24.4"
\include "include/prologue.ly"

% All The Way, Dick Whittington
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g4:maj7 df:7.11+ a:min7 ef:7.11+ |
  b:min7 f:7.11+ c:maj7 gf:7.11+ |
  d:7 af:7.11+ e:min7 bf:7.11+ |
  f:min7 b:7.11+ bf2:7.9-.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 1.8
  <fs b>4 <f g> <g c'> <g a> |
  <a d'> <a b> <b e'> <bf c'> |
  <c' e' fs'> <c' d'> <d' g'> <af d' e'> | \break
  <ef' af'>4 <ef' f'>4 <b e' bf'>2
  \bar "||"
}
theBass = {
  g,4 df, a, <ef, df> |
  b, <f, ef> c <gf, ff> |
  d <af, gf> e bf, | \break
  f4 <b, ds a>4 <bf, af>2
  \bar "||"
}

\include "include/dual.ly"
