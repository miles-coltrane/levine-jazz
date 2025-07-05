\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.9- | r1
  g:7.9- | r1
  g:7.9- | r1
}
theTreble = \relative {
  g'8 gs b d as b d f | cs d f af e f af b
  \bar "||" \break
  g' d b gs e' b gs f | cs' gs f d as' f d b
  \bar "||" \break
  g' af g f e f e d | cs d cs b as b as af | g1
  \bar "||"
}
theBass = {
  <f~ af~ b~ e'~>1 |
  <f af b e'>1 \bar "||" \break
  <f~ af~ b~ e'~>1 |
  <f af b e'>1 \bar "||" \break
  <f~ af~ b~ e'~>1 |
  <f~ af~ b~ e'~>1 |
  <f af b e'>1 \bar "||"
}

\include "include/dual.ly"
