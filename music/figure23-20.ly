\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 3
  c'4^\markup\left-align{"C minor 6th scale"} ef g a
  \bar "||"
  \time 7/4
  c,^\markup\left-align{"C blues scale"} ef f fs g bf c
  \bar "||"
  \time 6/4
  c,^\markup\left-align{"C minor pentatonic scale"} ef f g bf c
  \bar "||"
}

\include "include/treble.ly"
