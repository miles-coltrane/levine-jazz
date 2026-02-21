\version "2.24.4"
\include "include/prologue.ly"

% Sonnymoon For Two, Sonny Rollins, A Night At The Village Vanguard
theTempo = 155
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  r8 bf'4. af4 f4 | ef4 df bf8 bf4 bf8
  \bar "||"
}

\include "include/treble.ly"
