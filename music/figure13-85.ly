\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c2:7 | gf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  <bf f' bf'>2 d'4 e'4 | <af df' f'\seventh>1
  \bar "||"
}
theBass = {
  <g, f>2 <c e bf>2 | <gf, ef>1
  \bar "||"
}

\include "include/dual.ly"
