\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  r8 c'8 \tuplet 3/2 {ef g c} ef, g a c |
  g a c ef  a, c ef g |
  c, ef g a  ef g a c | \break
  a4 g8 ef8~ ef2
  \bar "||"
}
theBass = {
  <c, g,>2 <ef a d'>2 |
  <f bf ef'>2 <fs b e'>2 |
  <g c' f'>2 <af df' gf'>2 | \break
  <a d' g'>4.
  <bf~ ef'~ af'~>8
  <bf ef' af'>2
  \bar "||"
}

\include "include/dual.ly"
