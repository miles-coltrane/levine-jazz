\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 5/4
theChords = \chordmode {
  g1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  c''4_\markup{"C, the \"avoid\" note on G7"} d'' e'' g'' a''
  \bar "||"
  f' g' a'_\markup\center-column{"C," "the \"avoid\"" "note on G7"} c'' d''
  \bar "||"
  g' a'\ninth b' d'' e''\thirteenth
  \bar "||"
}
theBass = {
  <g, f a b e'>1 s4
  \bar "||"
  <g, f a b e'>1 s4
  \bar "||"
  <g, f a b e'>1 s4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "I pentatonic scale"1 ""4
  "IV pentatonic scale"1 ""4
  "V pentatonic scale"1 ""4
}

\include "include/dual+lyrics2.ly"
