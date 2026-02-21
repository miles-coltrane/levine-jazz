\version "2.24.4"
\include "include/prologue.ly"

% All The Things You Are, Jerome Kern
theTempo = 150
theKey = af
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:min7 | e2:min7 a2:7 | af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  <af ef' af'>1 |
  <df' af' df''>2. af'4 |
  <<
    {\stemUp g'4 g'4 g'4 g'4 | <g'\seventh>4 <c''\third>2.}
    \new Voice {\voiceTwo <g d'>2 <b cs'>2 | <bf c' ef'>1}
  >>

  \bar "||"
}
theBass = {
  f,1 | <bf, af>1 | e,2 <a, g>2  | <af, g>1
  \bar "||"
}

\include "include/dual.ly"
