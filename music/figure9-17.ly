\version "2.24.4"
\include "include/prologue.ly"

% Wingspan, Mulgrew Miller, Wingspan
theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b1:min7 | e:7 | a:maj7
}
theTreble = \relative {
  b8 cs e fs  b cs e fs |
  b cs e fs  cs fs e cs |
  a e' cs b a b fs4
  \bar "||"
}

\include "include/treble.ly"
