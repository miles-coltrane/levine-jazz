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
  <ef g c'>4 ^\markup{"C-6"}
  <f gs d'>4 ^\markup{"dim"}
  <g a ef'>4 ^\markup{"C-6"}
  <gs b f'>4 ^\markup{"dim"}
  <a c' g'>4 ^\markup{"C-6"}
  <b d' gs'>4 ^\markup{"dim"}
  <c' ef' a'>4 ^\markup{"C-6"}
  <d' f' b'>4 ^\markup{"dim"}
  <ef' g' c''>4 ^\markup{"C-6"}
  \bar "||"
}
theBass = {
  a,4 b, c d ef f g gs a
  \bar "||"
}

\include "include/dual.ly"
