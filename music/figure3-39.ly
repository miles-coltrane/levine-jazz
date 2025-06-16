\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7
}
theTreble = \relative {
  % TODO: mark "minor 9th" interval from e in bass cleff to f in treble cleff
  <a' f'>1
  \bar "||"
}
theBass = {
  <f a e'>1
  \bar "||"
}

\include "include/dual.ly"
