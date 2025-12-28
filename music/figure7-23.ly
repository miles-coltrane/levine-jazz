\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
  c4:6 c:7.9-
  c4:6 c:7.9-
  c4:6 c:7.9-
  c4:6 c:7.9-
  c4:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 5
  \override Timing.TimeSignature.stencil = ##f
  <e g a c'>4
  <f af b d'>4
  <g a c' e'>4
  <af b d' f'>4
  <a c' e' g'>4
  <b d' f' af'>4
  <c' e' g' a'>4
  <d' f' af' b'>4
  <e' g' a' c''>4
  \bar "||"
}
theBass = {
  c,4 g,4 c,4 g,4 c,4 g,4 c,4 g,4 c,4
  \bar "||"
}

\include "include/dual.ly"
