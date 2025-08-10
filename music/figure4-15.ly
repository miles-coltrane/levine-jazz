\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 d e f d e f g |
  e f g a f g a b |
  g a b c a b c d|
  b c d e c2
  \bar "||"
}

\include "include/scale-nochords2.ly"
