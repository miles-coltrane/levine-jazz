\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | r1 | bf1:min7 | ef1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp
      ef'4 f'4 g'4 bf'4 |
      c''4 ef''4 c''4 bf'4 |
      c''1~ |
      c''1
    }
    \new Voice {\voiceTwo
      bf1 |
      ef'1|
      <df' f'>1 |
      <df' ef'>1
    }
  >>
  \bar "||"
}
theBass = {
  c1 | <c bf>1 | <bf, af>1 | <ef g>1
  \bar "||"
}

\include "include/dual.ly"
