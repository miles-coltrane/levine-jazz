\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 d ef f g a b c |
  d c b a g f ef d |
  ef f g a b c d ef | \break
  f ef d c b a g f |
  g a b c d ef f g |
  a g f ef d c b a | \break
  b c d ef f g a b |
  c b a g f ef d c |
  \bar "||"
}

\include "include/scale-nochords.ly"
