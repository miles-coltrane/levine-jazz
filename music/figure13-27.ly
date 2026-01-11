\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  f2:min7 bf2:7.9- | ef2:maj7 df2:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <ef' af ef'>2 <d g b d>2 |
  <<
    {\stemUp \tuplet 3/2 {bf'4 g af}}
    \new Voice { \voiceTwo d,2}
  >>
  <cf ef bf'>2
  \bar "||"
}
theBass = {
  f,2 <bf, af>2 | <ef g>2 <df f>2
  \bar "||"
}

\include "include/dual.ly"
