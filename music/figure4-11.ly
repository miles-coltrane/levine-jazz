\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  e'8 c f d g e a f |
  b g c a d b c4 |
  e8 c d b c a b g |
  a f g e f d c4
  \bar "||"
}

\include "include/scale-nochords2.ly"
