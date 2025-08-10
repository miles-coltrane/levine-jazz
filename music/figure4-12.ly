\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 e f d d g a f |
  g b c a b d e c |
  c e d b a c b g |
  f a g e d f e c
  \bar "||"
}

\include "include/scale-nochords2.ly"
