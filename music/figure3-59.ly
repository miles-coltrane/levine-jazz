\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
 \set chordChanges = ##f % show chords when unchanged
 b1:min7.5- |
 b1:min7.5-
}
theTreble = \relative {
  b8 c d e  f g a b \bar "||"
  \set fingeringOrientations = #'(right) % TODO: get to RHS
  c,1\finger\markup{\override #'(font-name . "sans")"♭9"}^\markup{"\"avoid\" note"}
  \bar "||"
}
theBass = {
  <b, d f a>1 \bar "||"
  <b, d f a>1 \bar "||"
}

\include "include/dual.ly"
