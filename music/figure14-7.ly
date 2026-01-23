\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <bf ef' g>4 <af df' f'>8 <bf ef' g'>8 <df' gf' bf'>8 <ef' af' c''>8 <df'~ gf'~ bf'~>4 |
  <df' gf' bf'>8 <bf~ ef'~ g'~>4. <bf ef' g'>8 <af df' f'>4.
  \bar "||"
}
theBass = {
  <c f>4 <bf, ef>8 <c f>8 <ef af>8 <f bf>8 <ef~ af~>4 |
  <ef af>8 <c~ f~>4. <c f>8 <bf, ef>4.
  \bar "||"
}

\include "include/dual.ly"
