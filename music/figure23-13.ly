\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:maj7.6- af2:maj7 | df1:7.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <<
    {\stemUp ef''4 c''4}
    \new Voice {\voiceTwo <e' g' c''>2}
  >> <c' f' bf'>4 <bf ef' af'>4 |
  <ef' g'>4 f'8 g'8~ g'2
  \bar "||"
}
theBass = {
  <af, g>2 g4 f4 |
  <df f cf'>1
  \bar "||"
}

\include "include/dual.ly"
