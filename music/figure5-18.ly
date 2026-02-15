\version "2.24.4"
\include "include/prologue.ly"

% New York, Donald Brown, Sources of Inspiration
theTempo = 240
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | b1:/c | e1:/f
}
theTreble = \relative {
  \partial 8 <fs~ b~ ds~>8 |
  <fs~ b~ ds~>2. <fs b ds>8
  <b~ e~ gs~>8 |
  <b e gs>1
  \bar "||"
}
theBass = {
  \partial 8 r8 |
  r8 b,8 fs,8 c,8~  c,2 |
  r8 e8 b,8 f,8~ f,2
  \bar "||"
}

\include "include/dual.ly"
