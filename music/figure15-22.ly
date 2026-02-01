\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:min7 | ef2:sus4 ef2:alt | c2:maj7 ef2:7 | af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <df'~ af'~>1 |
  <df' af'>4 g'8 af'8 cf''4 cf''4 |
  <<
    {g'1~}
    \new Voice {\voiceTwo <a d'>2 <a c'>2}
  >>|
  <bf c' ef' g'>1
  \bar "||"
}
theBass = {
  bf,1 |
  ef,2 <ef g df'>2 |
   <c e>2 <ef, df>2 |
  <af, g>1
  \bar "||"
}

\include "include/dual.ly"
