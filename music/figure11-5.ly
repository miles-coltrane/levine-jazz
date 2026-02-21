\version "2.24.4"
\include "include/prologue.ly"

% CTA, Arthur Taylor, Taylor's Wailers
theTempo = 130
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  gf2:7 af:7 | gf:7 f:7 | bf:7 af:7 | gf:7 f:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <d' g bf>2 <c f af> |
  <bf ef gf> <a d f> |
  <d g bf> <c f af> |
  <bf ef gf> <a d f>
  \bar "||"
}
theBass = {
  <bf, af>2 <af, gf> |
  <gf, ff> <f, ef> |
  <bf, af> <af, gf> |
  <gf, ff> <f ef>
  \bar "||"
}

\include "include/dual.ly"
