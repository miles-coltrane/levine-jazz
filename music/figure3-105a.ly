\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  b\breve:7
}
theTreble = {
  \override Timing.TimeSignature.stencil = ##f
  b4 cs' ds' e' fs' gs' a' b'^\markup\right-align{\smaller "B Mixolydian, 5th mode of E major"}
  \bar "||"
}
theName = \markup { "" }
theLyrics = \lyricmode {
  "root" "9th" "3rd" "11th" "5th" "13th" "7th" "root"
}

\include "include/scale-lyrics.ly"
