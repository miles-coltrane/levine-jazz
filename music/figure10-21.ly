\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7 | f1:7 | g1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  g''8 gf f ef c g bf c
  \bar "||"
  g'8 gf f ef c g bf c
  \bar "||"
  g'8 gf f ef c g bf c
  \bar "||"
}
theBass = {
  <c e bf>1
  \bar "||"
  <f a ef'>1
  \bar "||"
  <g b f'>1
  \bar "||"
}

\include "include/dual.ly"
