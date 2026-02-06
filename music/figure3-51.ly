\version "2.24.4"
\include "include/prologue.ly"

% Infant Eyes, Wayne Shorter, Speak No Evil
theTempo = 75
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | ef1:maj7 | ef:sus7.9-
}
theTreble = \relative {
  \relative {
    \partial 4 g'8 af |
    <<
     {\tieUp\stemUp bf2~ bf8 g f ef}
     \new Voice { \voiceTwo <c f>1 }
    >> |
    <ff af bf df>1
    \bar "||"
  }
}
theBass = {
  \partial 4 r4 |
  ef,1 | ef,
  \bar "||"
}

\include "include/dual.ly"
