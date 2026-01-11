\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r1 | bf:maj7.3-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \set fingeringOrientations = #'(right)
  r4 bf8 c' df' ef' \tuplet 3/2 {f' gf' af'}
  \bar "||"
  <df' f' a'\seventh>1
  \bar "||"
}
theBass = {
  r1
  \bar "||"
  <bf, g>1
  \bar "||"
}

\include "include/dual.ly"
