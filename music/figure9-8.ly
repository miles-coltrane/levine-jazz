\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 5/4
theChords = \chordmode {
  d1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  c''4 d'' e'' g'' a''
  \bar "||"
  f' g' a' c'' d''
  \bar "||"
  g' a' b'\sixth d'' e''\ninth
  \bar "||"
}
theBass = {
  <d f a c'>1 s4
  \bar "||"
  <d f a c'>1 s4
  \bar "||"
  <d f a c'>1 s4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \markup\center-column{"I pentatonic scale" "over a II chord"}1 ""4
  \markup\center-column{"IV pentatonic scale" "over a II chord"}1 ""4
  \markup\center-column{"V pentatonic scale" "over a II chord"}1 ""4
}

\include "include/dual+lyrics2.ly"
