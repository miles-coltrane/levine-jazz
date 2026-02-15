\version "2.24.4"
\include "include/prologue.ly"

% Bonita, Horace Silver, The Cape Verdean Blues
theTempo = 135
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r4 | c1:min | b2:7 bf2:7| a1:7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 4 ef'16 g a bf | a g ef g a bf a g ef g a bf a g ef g | \break
  a bf a g ef g a bf a g ef g a b a g | \break
  ef g a b a g ef g a8 b4 a8~ | a2
  \bar "|."
}

\include "include/treble.ly"
