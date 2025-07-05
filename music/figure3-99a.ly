\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  a\breve:min7.5-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  a'4 bf_\markup{"♭9"} c d ef f g a^\markup\right-align{\smaller "A Locrian, 7th mode of B♭ major"}
  \bar "||"
}
theBass = {
  <a c' ef' g'>1 s1
  \bar "||"
}

\include "include/dual.ly"
