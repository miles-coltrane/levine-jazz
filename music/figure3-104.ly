\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  b\breve:alt
}
theName = \markup { "VII" }
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  b4
  c'
  d'
  ef'
  f'
  g'
  a'
  b'^\markup\right-align{\smaller "B altered"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "♭9" "♯9" "" \markup\center-column{"♯11" "♭5"} \markup\center-column{"♭13" "♯5"} "" ""
}

\include "include/scale-lyrics.ly"
