\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b1:7.11+ | a:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
   {\stemUp g'4 f'4 e'4 d'4}
   \new Voice {\voiceTwo <c' e'>1}
  >> |
  <gs b cs' e'>1
  \bar "||"
}
theBass = {
  <bf, af>1 | a,1
  \bar "||"
}

\include "include/dual.ly"
