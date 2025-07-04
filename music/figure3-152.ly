\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | b:alt | bf:min7
}
theTreble =  {
  <<
    { ef'4 ef' ef' ef' | g'2. f'4 }
    \new Voice { \voiceTwo
      bf1 | d'1
    }
  >> |
  <af df'>1
  \bar "||"
}
theBass = {
  c1 | <b, ds a>1 | bf,1
  \bar "||"
}

\include "include/dual.ly"
