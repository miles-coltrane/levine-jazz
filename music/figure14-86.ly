\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7  | gf2:7.11+ f2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <d'~ ef'~ g'~ bf'~>2 <d' ef' g' bf'>8 ef'8 g'8 bf'8 |
  <<
    {c''1}
    \new Voice {\voiceTwo <bf ef' af'>2 <a d' g'>2}
  >>
  \bar "||"
}
theBass = {
  c1 | <gf, ff>2 <f, ef>2
  \bar "||"
}

\include "include/dual.ly"
