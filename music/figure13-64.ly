\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  ef2.:alt | e2.:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <gf' cf'' gf''>2. | <fs' b' ds''>2.
  \bar "||"
}
theBass = {
  <ef g df'>2. | <e gs cs'>2.
  \bar "||"
}

\include "include/dual.ly"
