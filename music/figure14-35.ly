\version "2.24.4"
\include "include/prologue.ly"

% Embraceable You, Donald Brown, Sources Of Inspiration
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:maj7 f4:min7 e4:7.9+ | ef2:sus4 d2:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  r8 <d' fs' b'>4. <ef 'af' c''>4 <d' g' d''>4 |
  <f' af' c'' ef''>2 <c' ef' fs'>2
  \bar "||"
}
theBass = {
  r8 g4. <g bf>4 <e gs>4 |
  <ef df'>2 d2
  \bar "||"
}

\include "include/dual.ly"
