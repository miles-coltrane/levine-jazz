\version "2.24.4"
\include "include/prologue.ly"

% Wingspan, Mulgrew Miller, Wingspan
theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7 | af:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  f'8^\markup{"(A♭7)"} af bf c ef g af bf | df4
  \bar "||"
}

\include "include/treble.ly"
