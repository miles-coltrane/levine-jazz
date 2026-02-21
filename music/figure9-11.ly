\version "2.24.4"
\include "include/prologue.ly"

% Rahsaan's Run, Woody Shaw, Rosewood
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r16 | af1:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 16 df'''16~ | df2 bf8 af gf ef | df bf af4
  \bar "||"
}

\include "include/treble.ly"
