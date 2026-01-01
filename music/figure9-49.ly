\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 7/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  c'4^\markup{"C minor pentatonic scale"} ef f s g bf c
  \bar "||" \break

  c,4^\markup{"C blues scale"} ef f fs g bf c
  \bar "||"
}

\include "include/treble-aligned.ly"
