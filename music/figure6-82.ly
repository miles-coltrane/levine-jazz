\version "2.24.4"
\include "include/prologue.ly"

% Hub Tones, Freddie Hubbard, Hub Tones
theTempo = 130
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7 | bf:7 c2:min7 f2:7 |
  bf1:7 | ef:7 | bf:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  g''8f ef d c d ef f |
  g f ef d c d ef f |
  g f ef d c d ef f
  \bar "||" \break
  g f ef d c d ef f
  g f ef d c d ef f
  g4 s2
  \bar "||"
}

\include "include/treble.ly"
