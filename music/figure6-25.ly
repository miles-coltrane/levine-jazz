\version "2.24.4"
\include "include/prologue.ly"

% Totem Pole, Lee Morgan, The Sidewinder
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7 | r1| e:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r2 c''4 a4 | bf4 g4 a4 f4 | gs4 e4 g4 d4
  \bar "||"
}

\include "include/treble.ly"
