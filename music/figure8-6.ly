\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode { c1:maj7 }
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  <
    d'\ninth
    fs'\finger\markup{\override #'(font-name . "sans")"♯11"}
    a'\sixth
  >1 \bar "||"
}
theBass = {
  <c e g b>1
  \bar "||"
}

\include "include/dual.ly"
