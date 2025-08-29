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
  fs'8 a bf g a c d bf | c ef f df ef g a f | g bf c a g bf a f | \break
  ef g f d c ef d b_\markup\center-align{"♯11"}
  \bar "||"
}

\include "include/treble.ly"
