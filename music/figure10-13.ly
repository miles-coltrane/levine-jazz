\version "2.24.4"
\include "include/prologue.ly"

% Blue Train, John Coltrane, Blue Train
theTempo = 150
theKey = gf
theSignature = 4/4
theChords = \chordmode {
  ef1:min
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2

  <af' ef'>4 <af ef'>8 ef8 gf8 <af ef'>8 r4 |
  ef16 gf16 r8 \tuplet 3/2 { <af ef'>4 <a~ ef'~>8} <a ef'>4 <af ef'>8 gf8 |
  \tuplet 3/2 {ef4 ef8} df8 bf8 df8 <ef gf>8 r4 | \break
  r8 ef8 \tuplet 3/2 {gf af a} \tuplet 3/2 {bf ef bf} \tuplet 3/2 {a af gf}

  \bar "||"
}

\include "include/treble.ly"
