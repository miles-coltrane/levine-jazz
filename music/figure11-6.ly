\version "2.24.4"
\include "include/prologue.ly"

% I've Got Rhythm, George Gershwin
theTempo = 180
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  c1:7 | r | df:7 | r | c:7 | r | b:7 | r
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <fs' b d>1 |
  <fs b d>1 |
  <f bf df> |
  <f bf df> |
  <e a c> |
  <e a c> |
  <ds gs b> |
  <ds gs b>
  \bar "||"
}
theBass = {
  <d c'>1   | <d c'>1 |
  <df cf'>1 | <df cf'>1 |
  <c bf>1   | <c bf>1 |
  <cf a>1   | <cf a>1 |
  \bar "||"
}

\include "include/dual.ly"
