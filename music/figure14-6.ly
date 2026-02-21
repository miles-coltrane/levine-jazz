\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e2:7.9- d2:min7 | cs1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <f' gs' b' e''>2 <f' c'' f''>2 | <b' e'' fs''>1
  \bar "||"
}
theBass = {
  <e gs d'>2 <d c'>2 | <cs a>1
  \bar "||"
}

\include "include/dual.ly"
