\version "2.24.4"
\include "include/prologue.ly"

% Mirror Mirror, Joe Henderson, Mirror Mirror
theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  f2.:min7 | g:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp bf'4 a' af' | g' af8 g'8~ g'4}
    \new Voice {\voiceTwo ef'2. | <b e'>2.}
  >>
  \bar "||"
}
theBass = {
  <f af>2. | <g, f>2.
  \bar "||"
}

\include "include/dual.ly"
