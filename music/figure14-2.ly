\version "2.24.4"
\include "include/prologue.ly"

% Yesterdays, Jerome Kern
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  d'4 e f g | gs a b c
  \bar "||"
}
theBass = {
  d4 df c b, | bf, a, af, g,
  \bar "||"
}

\include "include/dual.ly"
