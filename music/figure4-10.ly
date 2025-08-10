\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 e d f e g f a |
  g b a c b d c4 |
  c8 e b d a c g b |
  f a e g d f c4
  \bar "||"
}

\include "include/scale-nochords2.ly"
