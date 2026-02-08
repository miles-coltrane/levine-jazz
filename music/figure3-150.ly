\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | g\breve:alt | c:min7
}
theTreble = \relative {
  \partial 4 d''4 | ef1~ | ef4 ef ef d | <g, bf ef f>1
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <<
    { f2\rest \stemUp <f~ bf~ cf'~ ef'~>2 | <f bf cf' ef'>1}
    \new Voice { \voiceTwo
      \set Staff.pedalSustainStyle = #'mixed
      g,1~\sustainOn | g,1\sustainOff % TODO: extend pedal to end of second note
    }
  >> |
  <c bf>1
  \bar "||"
}

\include "include/dual.ly"
