\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 bf1:min7 | ef1:7 | af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <ef' af'>1 |
  <<
    { \stemUp
      df''2. af'4 |
      g'4 g'4 g'4 g'4 |
      g'4 c''2.
    }
    \new Voice {\voiceTwo
      <df' af'>1 |
      df'1 |
      <bf c' ef'>1
    }
  >>
  \bar "||"
}
theBass = {
  f,1 | bf,1 | ef,1 | af,1
  \bar "||"
}

\include "include/dual.ly"
