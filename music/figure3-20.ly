\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.11+
}
theTreble = \relative {
  \set fingeringOrientations = #'(right) % TODO: figure why not set to R
  cs''1\finger\markup{\override #'(font-name . "sans")"♯11"}
  \bar "||"
}
theBass = {
  <g b d' f'>1
  \bar "||"
}

\include "include/dual.ly"
