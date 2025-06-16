\version "2.24.4"
\include "include/prologue.ly"


theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | g1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  g'8 a b c_\markup\center-align{"11th"}  d e f g |
  \set fingeringOrientations = #'(right) % TODO: figure why not set to R
  c,1\eleventh
  \bar "||"
}
theBass = {
  <g b d' f'>1 |
  <g b d' f'>1 |
  \bar "||"
}

\include "include/dual.ly"
