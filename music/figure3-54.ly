\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:sus7.9- | d:maj7
}
theTreble = \relative {
  \relative {
    <<
      {a'4 g d e}
      \new Voice {\voiceTwo <bf d e>1}
    >> |
    <b cs e fs>1
    \bar "||"
  }
}
theBass = {
  \relative {
    a,1 | d,1
    \bar "||"
  }
}

\include "include/dual.ly"
