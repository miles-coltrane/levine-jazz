\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:min7 bf2:7.9- | ef1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \set fingeringOrientations = #'(right)
  af8 bf c' ef' << {\stemUp <cf''\flatnine>4. bf'8} \new Voice {\voiceTwo d'2} >> |
  <df' gf'>2
  \bar "||"
}
theBass = {
  f,2 <bf, af>2 | ef2
  \bar "||"
}

\include "include/dual.ly"
