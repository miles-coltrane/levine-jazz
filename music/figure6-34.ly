\version "2.24.4"
\include "include/prologue.ly"

% Prophet Jennings, Freddie Hubbard, Hub Tones
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:alt
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \tuplet 3/2 {af'4 ef8}
  \tuplet 3/2 {af bf af~}
  \tuplet 3/2 {af bf ef}
  \tuplet 3/2 {bf ef af~} |
  \tuplet 3/2 {af ef af,}
  \tuplet 3/2 {bf af bf~}
  \tuplet 3/2 {bf ef af}
  \tuplet 3/2 {ef bf af} | \break
  \tuplet 3/2 {bf af bf}
  \tuplet 3/2 {ef4 af8}
  \tuplet 3/2 {bf4 af8}
  ef4
  \bar "||"
}

\include "include/treble.ly"
