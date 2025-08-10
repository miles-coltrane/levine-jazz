\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7.4+.9+ % TODO: fix chord to get rid of sus/3
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <
    fs-\finger\markup{\override #'(font-name . "sans")"♯4"}
    b
    ds-\finger\markup{\override #'(font-name . "sans")"♯9"}
  >
  \bar "||"
}
theBass = {
  c,1
  \bar "||"
}

\include "include/dual.ly"
