\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c:maj7 % TODO: want "CΔ ♯4"
}
theTreble = \relative {
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(right) % TODO: figure why not set to R
  fs'1-\finger\markup{\override #'(font-name . "sans")"♯4"}
  \bar "||"
}
theBass = {
  <c e g b>1
  \bar "||"
}

\include "include/dual.ly"
