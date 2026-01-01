\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
   c1:min7 | df:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  ef''8 c ef g  f ef c f |
  ef c bf g ef c f4
  \bar "||"
}
theBass = {
  <c ef g bf>1 |
  <df f af>1
  \bar "||"
}

\include "include/dual.ly"
