\version "2.24.4"
\include "include/prologue.ly"

% I Remember You, Victor Schertzinger
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | e:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    { \stemUp e'4 f' c' d' }
    \new Voice { \voiceTwo a1 }
  >>
  | <gs d' e'>1
  \bar "||"
}
theBass = {
  f,1 | e,1
  \bar "||"
}

\include "include/dual.ly"
