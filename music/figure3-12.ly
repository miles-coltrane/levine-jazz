\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  c\breve:maj7 % TODO: want "CΔ ♯4"
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
  c''^\markup\center-align{"C Lydian mode"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "♯4" "5th" "" "" ""
}

\include "include/scale-lyrics.ly"
