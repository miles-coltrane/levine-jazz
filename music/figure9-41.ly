\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  c'4^\markup{"C melodic minor scale"} d ef f g a b c s
  \bar "||" \break

  % TODO: align notes in both clefs
  s s s f,^\markup{"F pentatonic scale"}_\markup{"IV pentatonic scale"} g a s c d
  \bar "||"
}

\include "include/treble-aligned.ly"
