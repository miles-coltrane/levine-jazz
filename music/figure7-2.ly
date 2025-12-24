\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  c''8 bf a g f e d c
  \bar "||"
}
theBass = {
  <c e bf>1
  \bar "||"
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  "1"4 "2"4 "3"4 "4"4
}

\include "include/dual+lyrics4.ly"
