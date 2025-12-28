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
  <e g  c'>4 ^\markup{"C6"}
  <f af d'>4 ^\markup{"dim"}
  <g a e'>4 ^\markup{"C6"}
  <af b f'>4 ^\markup{"dim"}
  <a c' g'>4 ^\markup{"C6"}
  <b d' af'>4 ^\markup{"dim"}
  <c' e' a'>4 ^\markup{"C6"}
  <d' f' b'>4 ^\markup{"dim"}
  <e' g' c''>4 ^\markup{"C6"}
  \bar "||"
}
theBass = {
  a,4 b, c d e f g af a
  \bar "||"
}

\include "include/dual.ly"
