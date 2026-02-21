\version "2.24.4"
\include "include/prologue.ly"

% Rosewood, Woody Shaw, Rosewood
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min7 bf:min7 | c:min7 bf:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.3
  r4 c'''2 bf8 g | r8 f ef c~ c4
  \bar "||"
}

\include "include/treble.ly"
