\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  a\breve:min7.5-
}
theName = \markup { "VI" }
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  a'4
  b'
  c''
  d''
  ef''
  f''
  g''
  a''^\markup\right-align{\smaller "A half-diminished (A Locrian #2)"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "" "♭5" "♭6" "" ""
}

\include "include/scale-lyrics.ly"
