\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  c\breve:maj7.3-/g
}
theName = \markup { "V" }
theTreble = {
  g'4
  a'
  b'
  c''
  d''
  ef''
  f''
  g''^\markup\right-align{"5th mode, C melodic minor"}
  \bar "||"
}

\include "include/scale.ly"
