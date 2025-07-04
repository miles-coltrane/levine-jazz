\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  f\breve:7.11+
}
theName = \markup { "IV" }
theTreble = {
  f'4
  g'
  a'
  b'
  c''
  d''
  ef''
  f''^\markup\right-align{"F Lydian dominant"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "♯11" "" "" "" ""
}

\include "include/scale-lyrics.ly"
