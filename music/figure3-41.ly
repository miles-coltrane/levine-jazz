\version "2.24.4"
\include "include/prologue.ly"

theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | d1:sus7.9-
}
theTreble = \relative {
  d'8 ef | g4 a8 ef8 r8 g a c |
  d4 ef8 d r8 c4 a8 |
  g4 c8 a8~ a2
  \bar "||"
}
theBass = {
  \partial4 r4 |
  <d~ ef~ f~ a~>1 |
  <d~ ef~ f~ a~>1 |
  <d ef f a>1 |
  \bar "||"
}

\include "include/dual.ly"
