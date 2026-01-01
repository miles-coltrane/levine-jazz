\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  s4 e'4^\markup{"E \"altered\" pentatonic scale"} f s a b cs s
  \bar "||" \break

  % TODO: align notes in both clefs
  d,^\markup{"D melodic minor scale"} e f g a b cs d
  \bar "||"
}

\include "include/treble-aligned.ly"
