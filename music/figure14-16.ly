\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | e4 ef:6 d:maj7 g:7 | df:maj7 d:7 df2:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.9
  \partial 8 gs8 |
  <gs b>4 <g c> <fs cs'> <f b d> |
  <f bf ef> <fs c' e> <f c' f>2
  \bar "||"
}
theBass = {
  \partial 8 r8 |
  <e, b,>4 <ef, bf,> <d, a,> g,4 |
  <df, af,> <d, a,> <df ,af,>2
  \bar "||"
}

\include "include/dual.ly"
