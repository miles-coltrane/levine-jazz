\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  c\breve:maj7.11+
}
theName = \markup { "IV" }
theTreble = {
  c'4
  d'
  e'
  f'
  g'
  a'
  b'
  c''^\markup\right-align{"C Lydian mode"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "♯4" "5th" "" "" ""
}

\include "include/scale-lyrics.ly"
