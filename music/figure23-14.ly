\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:maj7 d4:min7 df4:7.11- | c1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <<
    {\stemUp ef'4 g16 af16 c'16 ef'16}
    \new Voice {\voiceTwo <g c'>2}
  >> <c' f'>4 <bf cf' ef' g'>4 |
  <ef' bf' ef''>1
  \bar "||"
}
theBass = {
  af,2 e,4 ef,4 | c,1
  \bar "||"
}

\include "include/dual.ly"
