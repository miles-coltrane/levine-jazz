\version "2.24.4"
\include "include/prologue.ly"

% Four, Miles Davis, Workin'
theTempo = 210
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. | r4 b2.:/c
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4. g8 c ds~ |
  ds8 c8 <fs, b ds>2.
  \bar "||"
}
theBass = {
  \partial 4. r8 r4 |
  r4 <c, c>2.
  \bar "||"
}

\include "include/dual.ly"
