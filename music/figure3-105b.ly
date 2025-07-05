\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  b\breve:alt
}
theTreble = {
  \override Timing.TimeSignature.stencil = ##f
  b4 c' d' ef' f' g' a' b'^\markup\right-align{\smaller "B altered, 7th mode of C melodic minor"}
  \bar "||"
}
theName = \markup { "" }
theLyrics = \lyricmode {
  "root" "♭9" "♯9" "3rd" "♯11" "♭13" "7th" "root"
}

\include "include/scale-lyrics.ly"
