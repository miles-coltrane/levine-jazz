\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  b1:min7  | f:7 | bf:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r8 c''' a g  f a g f | d g f d c f d c | a d c a g c a g | \break
  f4 g8 d8~ d2
  \bar "||"
}
theBass = {
  <ef g bf d'>1 | <ef g a d>1 | <d~ f~ g~ c'~>1 |
  <d f g c'>1
  \bar "||"
}

\include "include/dual.ly"
