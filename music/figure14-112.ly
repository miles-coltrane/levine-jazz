\version "2.24.4"
\include "include/prologue.ly"

% All The Things You Are, Jerome Kern
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:min7 | ef1:7 | af1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  \set fingeringOrientations = #'(right)
  <<
    {\stemUp
      df'4 df'4 f'4 af'4
    }
    \new Voice {\voiceTwo
      af1
    }
  >> |
  <g' c'' f''>2 g'2 |
  <cf'~ ff'~ af'~>1 |
  <cf' ff' af'\ninth> |
  \bar "||"
}
theBass = {
  bf,1 |
  <ef df'>1 |
  <gf,~ gf~>1 |
  <gf, gf>1
  \bar "||"
}

\include "include/dual.ly"
