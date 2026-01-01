\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | f:7 | bf:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  g''8 c a f  d g f c | a d c g  f a g d | c1
  \bar "||"
}
theBass = {
  <ef g bf d'>1 | <ef g a>1 | <d f g>1
  \bar "||"
}

\include "include/dual.ly"
