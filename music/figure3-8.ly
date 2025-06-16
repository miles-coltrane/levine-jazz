
\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | r
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  c'8 d e f_\markup\center-align{"4th"} g a b c | f,1^\markup{"the 4th or \"avoid\" note"}
  \bar "||"
  \bar "||"
}
theBass = \relative {
  <c e g b> 1 |
  <c e g b> 1
  \bar "||"
}

\include "include/dual.ly"
