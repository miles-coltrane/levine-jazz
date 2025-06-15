\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  f\breve:maj7 % TODO: want "FΔ ♯4"
}
theName = \markup { "IV" }
theTreble = {
  f'4
  g'
  a'
  b'
  c''
  d''
  e''
  f''^\markup\right-align{"F Lydian mode"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "♯4" "" "" "" ""
}

\include "include/scale-lyrics.ly"
