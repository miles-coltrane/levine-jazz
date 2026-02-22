\version "2.24.4"
\include "include/prologue.ly"

% All The Things You Are, Jerome Kern
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 bf1:min7 | c4:7 b4:7.5+ bf4:7 a4:7 | af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <ef' af'>1 |
  <<
    { \stemUp
      df''2. af'4 |
      <e' g'>4 <ds' g'>4 <d' g'>4 <cs' g'>4 |
      g'4 c''2.
    }
    \new Voice {\voiceTwo
      <df' af'>1 |
      s1 |
      <bf c' ef'>1
    }
  >>
  \bar "||"
}
theBass = {
  f,1 |
  bf,1 |
  <c bf>4 <b, a>4 <bf, af>4 <a, g>4 |
  <af, g>1
  \bar "||"
}

\include "include/dual.ly"
