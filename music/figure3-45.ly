\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:sus9-
}
theTreble = \relative {
  \set fingeringOrientations = #'(left right)
  <
    e'\root
    f\finger\markup{\override #'(font-name . "sans")"♭9"}
    a\fourth
    b\fifth
    d\seventh
  >1
  \bar "||"
}

\include "include/treble.ly"
