\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7 | g:7 | c:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.5
  r8 e'' d g  e b a d |
  b4 g8 a8~ a2 |
  r8 g16 a16 b8 d e g d g |
  e d b a~ a2
  \bar "||"
}
theBass = {
  <f a c' e'>1 |
  <f a b e'>1 |
  <e~ g~ a~ d'~>1 |
  <e g a d'>1 |
  \bar "||"
}

\include "include/dual.ly"
