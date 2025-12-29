\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3.5
  f''8 bf a g  gs fs e cs |
  b f' d4 g8 d c f
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "key of F - - - - - - -"2
  "E pentatonic - - - - -"2
  "- -"8
  "key of F - - - - - - - - - - - - - -" 2.
}

\include "include/treble-lyrics.ly"
