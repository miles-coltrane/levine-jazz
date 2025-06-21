\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  d\breve:sus7.9- % TODO: want sus not sus4
}
theName = \markup {"II"}
theTreble = \relative {
  d'4 ef f g a b c d^\markup\right-align{"second mode, C melodic minor"}
  \bar "||"
}

\include "include/scale.ly"
