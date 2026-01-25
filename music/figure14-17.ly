\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 |
  af4:7.9+ a:7.9+ bf:7.9+ b:7.9+ |
  c:7.9- d:7 df2:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.9
  \partial 8 af8 |
  <gf cf>4 <g c> <af df> <a d> |
  <bf ef> <b c e> <bf c f>2
  \bar "||"
}
theBass = {
  \partial 8 r8 |
  <af, c>4 <a, cs> <bf, d> <b, ds> |
  <c e> <d fs> <df f>2
  \bar "||"
}

\include "include/dual.ly"
