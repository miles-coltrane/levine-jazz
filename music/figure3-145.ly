\version "2.24.4"
\include "include/prologue.ly"

% Our Man Higgins, Lee Morgan, Cornbread
theTempo = 240
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7.5+
}
theTreble = \relative {
  fs'8 d e gs fs2 | bf8 gf af c bf gf r4
  \bar "||"
}

\include "include/treble.ly"
