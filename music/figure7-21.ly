\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 5
  \override Timing.TimeSignature.stencil = ##f
  <e g a c'>4 ^\markup{"C6"}
  <f af b d'>4 ^\markup{"dim"}
  <g a c' e'>4 ^\markup{"C6"}
  <af b d' f'>4 ^\markup{"dim"}
  <a c' e' g'>4 ^\markup{"C6"}
  <b d' f' af'>4 ^\markup{"dim"}
  <c' e' g' a'>4 ^\markup{"C6"}
  <d' f' af' b'>4 ^\markup{"dim"}
  <e' g' a' c''>4 ^\markup{"C6"}
  \bar "||"
}

\include "include/treble.ly"
