\version "2.24.4"
\include "include/prologue.ly"

% Glass Enclosure, Bud Powell, The Amazing Bud Powell Vol. II
theTempo = 220
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 ef4:/g f f:/af | gf4:/g
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  bf'4 <ef, g bf>4 <f a c>4 <c f a>4 |
  <df gf bf>4
  \bar "||"
}
theBass = {
  bf4 <g, g>4 <f, f>4 <af, af>4 | <g, g>4
  \bar "||"
}

\include "include/dual.ly"
