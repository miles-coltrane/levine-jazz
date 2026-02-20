\version "2.24.4"
\include "include/prologue.ly"

% Hub Tones, Freddie Hubbard, Hub Tones
theTempo = 130
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | f:7 | bf:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  ef''8 d c bf a g f e | ef d c bf a f g a | bf2
  \bar "||"
}

\include "include/treble.ly"
