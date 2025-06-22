\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1:sus7 | af:sus7.9- | df:maj7
}
theTreble = \relative {
  <bf df f af>2 ef4 f4 |
  <a, df ef gf>2 df4 ef4 |
  <f, c' f>1
  \bar "||"
}
theBass = {
  <af, gf>1 |
  <af, af>1 |
  <df, af,>1 |
  \bar "||"
}

\include "include/dual.ly"
