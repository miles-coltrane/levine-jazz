\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  e\breve:sus7.9-
}
theName = \markup { "III" }
theTreble = {
  e'4
  f'
  g'
  a'
  b'
  c''
  d''
  e''^\markup\right-align{"E Phrygian mode"}
  \bar "||"
}

\include "include/scale.ly"
