\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  \set chordChanges = ##f % show chords even if unchanged
  a1:min7.5- |
  a1:min7.5-
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <bf'-\finger\markup{\override #'(font-name . "sans")"♭9"}>1
  \bar "||"
  <b-\ninth>1
  \bar "||"
}
theBass = {
  <a c' ef' g'>1 \bar "||"
  <a c' ef' g'>1 \bar "||"
}

\include "include/dual.ly"
