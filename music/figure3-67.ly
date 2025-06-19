\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 8/4
theChords = \chordmode {
  c\breve:maj7.3-
}
theName = \markup { "I " }
theTreble = {
  c'4
  d'
  ef'
  f'
  g'
  a'
  b'
  c''^\markup\right-align{"C minor-major"}
  \bar "||"
}

\include "include/scale.ly"
