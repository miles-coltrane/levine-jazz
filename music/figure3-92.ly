\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  \set chordChanges = ##f % show chords even if unchanged
  g1:7 | g1:7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <c''-\eleventh>1 | <ef-\finger\markup{\override #'(font-name . "sans")"♭13"}>
  \bar "||"
}
theBass = {
  <g b d' f'>1|
  <g b d' f'>1|
  \bar "||"
}

\include "include/dual.ly"
