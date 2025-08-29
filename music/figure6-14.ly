\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt | c:min7 |
  f:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  fs'8 a g bf a c bf d | c ef df f ef g f a | g bf a c bf g a f | \break
  g ef f d ef c d b_\markup\center-align{"♯11"}
  \bar "||"
}

\include "include/treble.ly"
