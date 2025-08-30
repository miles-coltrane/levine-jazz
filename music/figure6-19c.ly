\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt | e:min6.9
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <d' fs a>4 <d~ fs~ a~>4 <d fs a>8 g8 a8 <f a c>8 |
  r8 <f~ a~ c~>4.  <f a c>8 bf8 c8  <e,~ a~ d~>8 |
  <e a d>1
  \bar "||"
}
theBass = {
  <e bf>4 <e~ bf~>4 <e bf>4. <g df'>8 |
  r8 <g~ df'~>4. <g df'>4. <f~ b~>8 |
  <f b>1
  \bar "||"
}

\include "include/dual.ly"
