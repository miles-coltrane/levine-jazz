\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7 | a2:min7 d2:7
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp d'4 ef' g' bf' | d''1}
    \new Voice {\voiceTwo g1 | <c' g'>2 <c' fs'>2 }
  >>
  \bar "||"
}
theBass = {
  <ef, bf,>1 | a,2 d2
  \bar "||"
}

\include "include/dual.ly"
