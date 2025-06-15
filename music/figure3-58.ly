\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  b\breve:min7.5-
}
theName = \markup { "VII" }
theTreble = {
  b4 c' d' e' f' g' a' b'^\markup\right-align{"B Locrian mode"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "♭9" "" "" "♭5" "" "" ""
}

\include "include/scale-lyrics.ly"
