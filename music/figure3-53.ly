\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:sus9-
}
theTreble = \relative {
  \relative {
    <bf d e a>1
    \bar "||"
  }
}
theBass = {
  \relative {
    a1
    \bar "||"
  }
}

\include "include/dual.ly"
