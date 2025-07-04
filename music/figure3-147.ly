\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r4 | b1:7.5+
}
theTreble = \relative {
  \partial 4 b'8 a8|
  b4 a8 a8~ a8 g8 | a4 g8 g8~ g8 ef8 | g2.~ | g2.
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <b,~ ds~ a~>2. |
  <b,~ ds~ a~>2. |
  <b,~ ds~ a~>2. |
  <b, ds a>2.
  \bar "||"
}

\include "include/dual.ly"
