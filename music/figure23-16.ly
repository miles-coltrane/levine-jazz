\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:sus4 | ef1:maj7.6-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <af df' f' af'>2 f'8 g'8 af'8 <b~ d'~ g'~ bf'~>8 |
  <b d' g' bf'>4 g'8 ef'8
  \bar "||"
}
theBass = {
  ef,2.~ ef,8 ef,8~ | ef,2
  \bar "||"
}

\include "include/dual.ly"
