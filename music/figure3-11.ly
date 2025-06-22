\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c:maj7.11+
}
theTreble = \relative {
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(right)
  <fs'-\finger\markup{\override #'(font-name . "sans")"♯4"}>1
  \bar "||"
}
theBass = {
  <c e g b>1
  \bar "||"
}

\include "include/dual.ly"
