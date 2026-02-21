\version "2.24.4"
\include "include/prologue.ly"

% Totem Pole, Lee Morgan, The Sidewinder
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  f'8 ef8 f4 bf4. g8 | ef4 f8 c8~ c2
  \bar "||"
}

\include "include/treble.ly"
