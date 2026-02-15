\version "2.24.4"
\include "include/prologue.ly"

% If I Were A Bell, Red Garland, Red Garland's Piano
theTempo = 190
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. | b1.:/c
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4. g8 c <fs,~ b~ ds~> |
  <fs b ds>1
  \bar "||"
}
theBass = {
  \partial 4. r8 r8 <c,~ c~>8 |
  <c, c>1
  \bar "||"
}

\include "include/dual.ly"
