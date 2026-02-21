\version "2.24.4"
\include "include/prologue.ly"

% I'm Gettin' Sentimental Over You, Kenny Barron, Maybeck Recital Hall Series
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d4/ef ef2. |
  a2:min7 d2:7
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <fs a d'>4 <gf bf ef'> g' bf' |
  <<
    {\stemUp  d''1 }
    \new Voice {\voiceTwo  <c' g'>2 <c' fs'>2 }
  >>
  \bar "||"
}
theBass = {
  <ef, bf,>1 | a,2 d2
  \bar "||"
}

\include "include/dual.ly"
