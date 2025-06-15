\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  g\breve:sus7
}
theName = \markup { "V" }
theTreble = {
  g'4
  a'
  b'
  c''
  d''
  e''
  f''
  g''^\markup\right-align{"G Mixolydian mode"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "11th" "" "" "" ""
}

\include "include/scale-lyrics.ly"
