\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min | c:maj7.3- | c:min7 | c:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  r4 ef'4 \tuplet 3/2 {ef d ef} |
  g4 g2. |
  r4 ef \tuplet 3/2 {ef d ef} |
  g1
  \bar "||"
}
theBass = {
  <c~ c> |
  <c b> |
  <c~ bf> |
  <c~ a>
  \bar "||"
}

\include "include/dual.ly"
