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
  fs'8 g a bf c d e fs | g a bf c bf a g f | ef d c bf a g f ef | \break
  d c b_\markup\center-align{"♯11"} a g a b_\markup\center-align{"♯11"} c
  \bar "||"
}

\include "include/treble.ly"
