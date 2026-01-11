\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  % TODO: second chord should be C-b6
  c1:min | c:min7.6- | c:min6 | c:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 ef'4 \tuplet 3/2 {ef'4 d'4 ef'4} | g'4 g'2. |  r4 ef'4 \tuplet 3/2 { ef' d' ef'} | g'1
  \bar "||"
}
theBass = {
  <c~ g>1 | <c af> | <c~ a> | <c bf>
  \bar "||"
}

\include "include/dual.ly"
