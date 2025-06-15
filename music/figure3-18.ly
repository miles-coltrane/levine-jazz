\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  g\breve:7
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

\include "include/scale.ly"
