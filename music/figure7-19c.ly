\version "2.24.4"
\include "include/prologue.ly"

% Lazy Bird, John Coltrane, Blue Train
theTempo = 250
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:7 | g:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r2 d''4. df8 | c b a g fs e d c | b2
  \bar "||"
}

\include "include/treble.ly"
