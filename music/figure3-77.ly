\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7.9-
}
theTreble = \relative {
  \set fingeringOrientations = #'(right) % TODO: move to right
  ef'1\finger\markup{\override #'(font-name . "sans")"♭9"}
  \bar "||"
}
theBass = {
  <d f a c'>1
  \bar "||"
}

\include "include/dual.ly"
