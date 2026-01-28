\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7 a1:7.11+ d1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp a'2. g'4 }
    \new Voice {\voiceTwo <g d'>1}
  >> |
  <b cs' ds'>2 e'2 |
  <b~ cs'~ fs'~>1 |
  <b cs' fs'>1
  \bar "||"
}
theBass = {
  e,1 | <a, g>1 | <d,~ a,~>1 | <d, a,>1
  \bar "||"
}

\include "include/dual.ly"
