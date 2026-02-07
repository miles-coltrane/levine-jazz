\version "2.24.4"
\include "include/prologue.ly"

% Idle Moments, Grant Green, Idle Moments
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.9-
}
theTreble = \relative {
  gs'8 gs16 as16 b8 b16 cs16 d8 d16 e16 f8 f16 g16 |
  af8 af16 g16 f8 f16 e16 d16 cs16 b16 d,16 f16 af16 g16 f16|
  \bar "||"
}
theBass = {
  <f~ af~ b~ e'~>1 |
  <f af b e'>1
  \bar "||"
}

\include "include/dual.ly"
