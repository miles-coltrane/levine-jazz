\version "2.24.4"
\include "include/prologue.ly"

% Tune Up, Miles Davis, Relaxin'
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7 a1:7 | d1:maj7 | r1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <g d'>1 |
  <g cs'>1 |
  <fs~ cs'~>1 |
  <fs cs'>1
  \bar "||"
}
theBass = {
  e,1 | a,1 | d,1~ | d,1
  \bar "||"
}

\include "include/dual.ly"
