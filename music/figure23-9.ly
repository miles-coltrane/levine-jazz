\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 14/4
theChords = \chordmode {
  d1:min7.5- s1 s1 s2 |
  g1:7.9-   s1 s1 s1 s4 |
  c1:maj7.3- s1 s2 s4
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  c''4 d4 ef1 f4 g4 af4 b1 c4 |
  \time 17/4 c,1 d4 ef1 f4 g4 af4 b4 c1 |
  \time 11/4 c,4 d4 ef4 f4 g4 af1 b4 c4
  \bar "||"
}
theBass = {
  <d f af c'>1 s1 s1 s2 |
  <f af b e'>1 s1 s1 s1 s4|
  <ef g b d'>1 s1 s2 s4
  \bar "||"
}

\include "include/dual.ly"
