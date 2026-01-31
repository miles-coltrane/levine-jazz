\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  ef1 | ef1 | ef1:min7 | ef1:min7 | f1/ef | e1/ef | ef1 | ef1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <c'~ f~ bf~>1 |
  <c f bf>1 |
  <f~ gf~ bf~ df~>1 |
  <f gf bf df>1 |
  <c f a c>1 |
  <b e gs b>1 |
  <c~ f~ bf~> |
  <c f bf>
  \bar "||"
}
theBass = {
  <ef,~ ef~>1 | <ef, ef>1 |
  <ef,~ ef~>1 | <ef, ef>1 |
  <ef, ef>1 |
  <ef, ef>1 |
  <ef,~ ef~>1 | <ef, ef>1
  \bar "||"
}

\include "include/dual.ly"
