\version "2.24.4"
\include "include/prologue.ly"

theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1 | r1 | c:min7
  r1 | d:/c | df:/c | c | r
}
theTreble = \relative {
  <c'~ e~ g~ c~>1 |
  <c e g c>1 |
  % TODO: improve markup of chord name
  <bf~ ef~ g~ bf~>1^\markup{ (E♭/C) } |
  <bf ef g bf>1 |
  <a d fs a>1 |
  <af df f af>1 |
  <g~ c~ e~ g~>1 |
  <g c e g>1 |
  \bar "||"
}
theBass = {
  <c,~ c~>1 | <c, c>1 |
  <c,~ c~>1 | <c, c>1 |
  <c, c>1 | <c, c>1 |
  <c,~ c~>1 | <c, c>1 |
  \bar "||"
}

\include "include/dual.ly"
