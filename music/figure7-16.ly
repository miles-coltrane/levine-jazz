\version "2.24.4"
\include "include/prologue.ly"

% For Spee's Sake, Freddie Hubbard, Hub Tones
theTempo = 220
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | d1:7 | r2 af2:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 c'''8 b | a g fs e d df c b | a g fs e ef4 r4
  \bar "||"
}

\include "include/treble.ly"
