\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 f d g e a f b |
  g c a d b e c4
  \bar "||"
}

\include "include/scale-nochords2.ly"
