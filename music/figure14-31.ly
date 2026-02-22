\version "2.24.4"
\include "include/prologue.ly"

% I'm Gettin' Sentimental Over You, George Bassman
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | ef
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  af4 gf' f' d' | <g ef'>1
  \bar "||"
}
theBass = {
  <bf, d>1 | <ef, bf,>1
  \bar "||"
}

\include "include/dual.ly"
