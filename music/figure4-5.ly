\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c''8 b a g f ef d c |
  d ef f g a b c d |
  ef d c b a g f ef | \break
  f g a b c d ef f |
  g f ef d c b a b |
  a b c d ef f g a | \break
  b a g f ef d c b |
  c d ef f g a b c
  \bar "||"
}

\include "include/scale-nochords.ly"
