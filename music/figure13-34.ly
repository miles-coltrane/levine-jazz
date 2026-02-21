\version "2.24.4"
\include "include/prologue.ly"

% Blue Skies, George Gershwin
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min | f:min7.3- | f:min7 | f:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  f'2 c'2~ | c2 bf8af8 bf8 c8~ | c1~ | c1
  \bar "||"
}
theBass = {
  <f af>1 | <e af>1 | <ef af>1 | <d af>1
  \bar "||"
}

\include "include/dual.ly"
