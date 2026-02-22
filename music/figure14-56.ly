\version "2.24.4"
\include "include/prologue.ly"

% Tune Up, Miles Davis
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:sus4.9- | a1:7.9-.11+ | d1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp a'2. g'4 }
    \new Voice {\voiceTwo <bf d' fs'>1}
  >> |
  <as cs' ds'>2 e'2 |
  <b~ cs'~ fs'~>1 |
  <b cs' fs'>1
  \bar "||"
}
theBass = {
  <a, a>1 | <a, g>1 | <d,~ a,~>1 | <d, a,>1
  \bar "||"
}

\include "include/dual.ly"
