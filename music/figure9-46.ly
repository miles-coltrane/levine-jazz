\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  c'4^\markup{"C major scale"} d e f g a b c s
  \bar "||" \break

  % TODO: align notes in clefs
  s d,^\markup{"D melodic minor scale"} e f g a b cs d
  \bar "||" \break

  s s e,^\markup{"E In-sen scale"} f s a b s d
  \bar "||"
}

\include "include/treble-aligned.ly"
