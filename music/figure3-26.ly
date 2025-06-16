\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:sus7 | g:7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right) % TODO: figure why not set to R
  c''1\fourth \bar "||"
  c\fourth
  \bar "||"
}
theBass = {
  <g c' f'>1 \bar "||"
  <g b d' f'>1 \bar "||"
  \bar "||"
}

\include "include/dual.ly"
