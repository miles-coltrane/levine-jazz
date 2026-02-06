\version "2.24.4"
\include "include/prologue.ly"

% La Mesha, Joe Henderson, Page One
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  fs1:sus7 | fs:sus7.9- | f:7
}
theTreble = \relative {
  <e gs b cs>1 |
  <e g b cs>2 b'4 as4 |
  <g a ef'>1
  \bar "||"
}
theBass = {
  fs,1 |fs,1| f,1
  \bar "||"
}

\include "include/dual.ly"
