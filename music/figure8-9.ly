\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:7 | bf:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  b8' g8 fs4 a8 af g f | e fs d e s4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "A7 - - - - - - - - - - - - - - - - - - - -" 1 |
  "- - - - - - - - - -"1 |
}

\include "include/treble-lyrics.ly"
