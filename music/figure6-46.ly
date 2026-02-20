\version "2.24.4"
\include "include/prologue.ly"

% Locomotion, John Coltrane, Blue Train
theTempo = 265
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. | bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4. <>[ bf8 c cs]
  \bar "||"
  d e f a bf cs, d e |
  f a bf cs d e, f a |
  bf cs d e f4 a8 bf | \break
  e, f cs d a bf e, f
  \bar "||"
}

\include "include/treble.ly"
