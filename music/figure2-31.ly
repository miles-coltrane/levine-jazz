\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:maj7 d:min7 | e:min7 f:maj7 |
}
theTreble = \relative {
  <<
    { e'4 c4 f4 d4 | g4 e4 a4 f4 }
    \new Voice { \voiceTwo
      b,2 c2 | d2 e2
    }
  >>
  \bar "||"
}
theBass = \relative {
  c,2 d | e f|
  \bar "||"
}

\include "include/dual.ly"
