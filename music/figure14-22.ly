\version "2.24.4"
\include "include/prologue.ly"

% I Wish I Knew, John Coltrane, Ballads
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  fs2./g g4 | f1:7
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <fs as cs'>2. <g b d'>4 | <a d' g'>1
  \bar "||"
}
theBass = {
  g,1 | <f, ef>1
  \bar "||"
}

\include "include/dual.ly"
