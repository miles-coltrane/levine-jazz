\version "2.24.4"
\include "include/prologue.ly"

% Body And Soul, John Coltrane, Coltrane's Sound
theTempo = 145
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:maj7 e2:min7 |
  d2/fs g4:min7 c4:7 |
  d4:maj7 f4:7 bf4:maj7 df4:7 |
  gf4:maj7 a4:7 d2:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <fs cs'>2 <g d'>2 |
  <a d'>2 <bf f'>4 <bf e'>4 |
  <b cs' fs'>4 <a d' g'>4 <g c' f'>4 <cf' ef' bf'>4 |
  <bf ef' af'>4 <cs' fs' a'>4 <b e' a>2
  \bar "||"
}
theBass = {
  d,2 e,2 |
  fs,2 g,4 c4 |
  d,4 <f, ef>4 <bf, d>4 <df f>4 |
  <gf, f>4 <a, g>4 <d fs>2
  \bar "||"
}

\include "include/dual.ly"
