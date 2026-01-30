\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:7.11+ gf2:7.11+ | g2:sus4 g2:alt
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <c' f bf d>2 <c ef af c>2 |
  <c f a c> <cf ef g bf>2
  \bar "||"
}
theBass = {
  <af, gf>2 <gf, ff>2 |
  <g, g>2 <g, f>2
  \bar "||"
}

\include "include/dual.ly"
