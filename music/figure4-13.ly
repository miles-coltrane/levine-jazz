\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  e'8 c d f g e f a |
  b g a c d b c4 |
  e8 c b d c a g b |
  a f e g f d c4
  \bar "||"
}

\include "include/scale-nochords2.ly"
