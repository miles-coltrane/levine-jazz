\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  c'4^\markup{"the C major scale,"} d e f g a b c
  \bar "||" \break
  \time 5/4
  d,^\markup{"minus C and F, the two \"avoid\" notes,"} e g a b
  \bar "||"
  g^\markup{"is the G pentatonic scale"} a b d e
  \bar "||"
}

\include "include/treble-aligned.ly"
