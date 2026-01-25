\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:7 | c1
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 2
  <<
    {\stemUp d'4 e'4}
    \new Voice {\voiceTwo b2}
  >> |
  <g a c'>1
  \bar "||"
}
theBass = {
  \partial 2 <g, f>2 | <c e>1
  \bar "||"
}

\include "include/dual.ly"
