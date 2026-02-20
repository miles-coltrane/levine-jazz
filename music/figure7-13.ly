\version "2.24.4"
\include "include/prologue.ly"

% Totem Pole, Lee Morgan, The Sidewinder
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7 | f1:7 | e2:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r2 c''8 bf a g | f e ef d c bf a g | gs2
  \bar "||"
}

\include "include/treble.ly"
