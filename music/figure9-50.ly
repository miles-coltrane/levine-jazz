\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7.9+ | r1 |
  c1:7.9+ | r1
}
theTreble = \relative {
  r4 g''8 ef g ef c g | bf c~ c2.
  \bar "||" \break
  r4 fs8 g \tuplet 3/2 {fs f ef} c g | bf c~ c2.
  \bar "||"
}
theBass = {
  <e~ bf~ ef'~>1 | <e bf ef'>1
  \bar "||" \break
  <e~ bf~ ef'~>1 | <e bf ef'>1
  \bar "||"
}

\include "include/dual-aligned.ly"
