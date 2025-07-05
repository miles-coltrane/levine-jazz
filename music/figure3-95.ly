\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  ef1:7/f % TODO append "(Bflat maj-min/F)"
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  <df' f g c>1 f8 g a bf c df ef f^\markup\right-align{"5th mode, B♭ melodic minor"}
  \bar "||"
}
theBass = {
  <f, f>1 s1
  \bar "||"
}

\include "include/dual.ly"
