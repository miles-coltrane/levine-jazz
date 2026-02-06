\version "2.24.4"
\include "include/prologue.ly"

% Pent-Up House, Sonny Rollins Plus Four
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7 | r
}
theTreble = \relative {
  r8 d' e fs g a b c | d b
  \bar "||"
}

\include "include/treble.ly"
