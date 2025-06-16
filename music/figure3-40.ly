\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7
}
theTreble = \relative {
  % TODO: mark "minor 9th" interval from e in bass cleff to f in treble cleff
  <c' f a>1
  \bar "||"
}
theBass = {
  <e a>1
  \bar "||"
}

\include "include/dual.ly"
