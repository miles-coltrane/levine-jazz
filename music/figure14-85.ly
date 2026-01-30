\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7  | f1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <d'~ ef'~ g'~ bf'~>2 <d' ef' g' bf'>8 ef'8 g'8 bf'8 |
  <ef' g' a' c''>1
  \bar "||"
}
theBass = {
  c1 | f,1
  \bar "||"
}

\include "include/dual.ly"
