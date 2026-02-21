\version "2.24.4"
\include "include/prologue.ly"

% Golden Lotus, Kenny Barron, Golden Lotus
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  % CHORD NAMES HERE
}
theTreble = \relative {
  \partial 4 d'8 ef \bar "||"
  g4 a8 ef8 r8 g a c |
  d4 ef8 d8 r8 c4 a8 |
  g4 c8 a8~ a2
  \bar "||"
}
theBass = {
  \partial4 r4 \bar "||"
  <d~ ef~ g~ a~>1 |
  <d~ ef~ g~ a~>1 |
  <d ef g a>1
  \bar "||"
}

\include "include/dual.ly"
