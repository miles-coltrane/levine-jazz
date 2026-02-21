\version "2.24.4"
\include "include/prologue.ly"

% Moment's Notice, John Coltrane, Blue Train
theTempo = 245
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  ef''8 d c cf bf af ef f | g[ ef'] s4
  \bar "||"
}

\include "include/treble.ly"
