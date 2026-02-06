\version "2.24.4"
\include "include/prologue.ly"

% Summertime, George Gershwin
theTempo = 105
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:min7
}
theTreble = \relative {
  \partial 4 c''8 af \bar "||"
  <<
    {\tieUp c1~ | \stemUp c4 bf8 af8 \tuplet 3/2 {bf4 c4 af}}
    \new Voice { \voiceTwo <ef~ af~>1 | <ef af>1}
  >> |
  f4 c2.
  \bar "||"
}
theBass = {
  \partial 4 r4 \bar "||"
  <f~ bf~>1 |
  <f~ bf~>1 |
  <f bf>1 |
  \bar "||"
}

\include "include/dual.ly"
