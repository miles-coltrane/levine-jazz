\version "2.24.4"
\include "include/prologue.ly"

% Lazy Bird, John Coltrane, Blue Train
theTempo = 250
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | ef:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  bf'4. a8 af g f ef | d c bf af g2
  \bar "||"
}

\include "include/treble.ly"
