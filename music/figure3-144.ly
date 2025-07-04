\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  g\breve:7.5+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  g'4 a'^\markup{\smaller "(also G7+, G+7, G7 ♭13)"}
  b' cs'' ds'' f'' g''^\markup\right-align{"G whole-tone scale"} s4
  \bar "||"
}
theBass = {
  <f a b ds'>1 s1
  \bar "||"
}

\include "include/dual.ly"
