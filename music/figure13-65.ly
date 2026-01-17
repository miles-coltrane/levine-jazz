\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df1:7.11+ | af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp g'2. af'4}
    \new Voice {\voiceTwo <cf' ef'>1}
  >> |
  <bf c' f'>1
  \bar "||"
}
theBass = {
  <df f>1 | <af, g>1
  \bar "||"
}

\include "include/dual.ly"
