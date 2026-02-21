\version "2.24.4"
\include "include/prologue.ly"

% I Remember You, Victor Schertzinger
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | b2:min7 e2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    { \stemUp e'4 f' c' d' | <d' e'>1}
    \new Voice { \voiceTwo a1 | a2 gs2}
  >>
  \bar "||"
}
theBass = {
  f,1 | b,2 e,2
  \bar "||"
}

\include "include/dual.ly"
