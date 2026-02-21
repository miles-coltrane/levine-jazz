\version "2.24.4"
\include "include/prologue.ly"

% Blue Bossa, Kenny Dorham
theTempo = 160
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 g2:7.9- | c1:min6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \set fingeringOrientations = #'(right)
  g2 <af b f'>4. <g~ a~ ef'~>8 | <g a ef'\third>1
  \bar "||"
}
theBass = {
  g,2 <g, f>4. c8~ | c1
  \bar "||"
}

\include "include/dual.ly"
