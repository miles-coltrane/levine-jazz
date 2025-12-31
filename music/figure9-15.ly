\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 5/4
theChords = \chordmode {
  c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  c'4 d' e' g' a'
  \bar "||"
  f'_\markup\center-column{"F, the \"avoid\" note on" "a CΔ chord"} g' a' c'' d''
  \bar "||"
  g' a' b'\finger\markup{\override #'(font-name . "sans")\center-column{"major" "7th"}}
  d''\ninth e''
  \bar "||"
}
theBass = {
  <c e g b>1 s4
  \bar "||"
  <c e g b>1 s4
  \bar "||"
  <c e g b>1 s4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "I pentatonic scale"1 ""4
  "IV pentatonic scale"1 ""4
  "V pentatonic scale"1 ""4
}

\include "include/dual+lyrics2.ly"
