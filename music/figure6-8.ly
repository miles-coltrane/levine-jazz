\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:min7/ef | g:7.9-/ef | f:maj7.3-/ef | g:alt
}
theTreble = \relative {
  \tuplet 3/2 {c'''8 af f} \tuplet 3/2 {df af' f} \tuplet 3/2 {df bf f'} \tuplet 3/2 {df bf f} |
  \tuplet 3/2 {bf' g d} \tuplet 3/2 {b g' e} \tuplet 3/2 {b af e'} \tuplet 3/2 {df af f} | \break
  \tuplet 3/2 {ef'' c g} \tuplet 3/2 {e c' g} \tuplet 3/2 {e df g} \tuplet 3/2 {e c af} |
  \tuplet 3/2 {g' ef bf} \tuplet 3/2 {g ef' bf} \tuplet 3/2 {g ef bf'} \tuplet 3/2 {g8 ef4}
  \bar "||"
}
theBass = {
  <af c' df' f'>1 |
  <f af b e'>1 | \break
  <g af c' e'>1 |
  <f bf cf' ef'>1
  \bar "||"
}

\include "include/dual.ly"
