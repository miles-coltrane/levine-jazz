\version "2.24.4"
\include "include/prologue.ly"

theTempo = 150
theKey = c
theSignature = 28/4
theChords = \chordmode {
  c1:maj7.3- d:min7 ef:maj7.5+ f:7 g:7 a:min7.5- b:min7.5-
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 2
  <c' ef g b>1 <d f a c> <ef g b d> <f a c ef> <g b d f> <a c ef g> <b d f a>
  \bar "||"
}

\include "include/treble.ly"
