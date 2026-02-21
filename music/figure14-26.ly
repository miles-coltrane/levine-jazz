\version "2.24.4"
\include "include/prologue.ly"

% Who Can I Turn To, Mulgrew Miller, Time And Again
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2.:min7 bf4:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp f''4 f''8 ef''8 f''4}
    \new Voice { \voiceTwo af'2. }
  >> <cf'~ ef'~ g'~ bf'~>4 |
  <cf' ef' g' bf'>1
  \bar "||"
}
theBass = {
  <f ef'>2. <bf,~ af~>4 | <bf, af>1
  \bar "||"
}

\include "include/dual.ly"
