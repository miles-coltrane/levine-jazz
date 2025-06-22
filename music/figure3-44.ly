\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7
}
theTreble = \relative {
  %\override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(right)
  <c''-\finger\markup{\override #'(font-name . "sans")"♭6"}>1
  \bar "||"
}
theBass = \relative {
  <e g b d>1
  \bar "||"
}

\include "include/dual.ly"
