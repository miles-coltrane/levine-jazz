\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  ef\breve:maj7.5+
}
theName = \markup { "III" }
theTreble = {
  ef'4
  % TODO: improve markup of chord name
  f'^\markup {(G/E♭)}
  g'
  a'
  b'
  c''
  d''
  ef''^\markup\right-align{"E♭ Lydian augmented"}
  \bar "||"
}
theLyrics = \lyricmode {
  "" "" "" "♯4" "♯5" "" "" ""
}

\include "include/scale-lyrics.ly"
