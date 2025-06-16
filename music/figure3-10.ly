\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  % TODO: vertically align text
  ef'4_\markup\center-align{4th} d_\markup\center-align{3rd} c bf
  \bar "||"
}
theBass = \relative {
  <bf, a'>1
  \bar "||"
}

\include "include/dual.ly"
