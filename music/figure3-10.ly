\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  ef'4 d c bf
  \bar "||"
}
theLyrics = \lyricmode {
  \markup {\smaller "4th"}
  \markup {\smaller "3rd"}
  "" ""
}
theBass = \relative {
  <bf, a'>1
  \bar "||"
}

\include "include/dual+lyrics3.ly"
