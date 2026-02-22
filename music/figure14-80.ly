\version "2.24.4"
\include "include/prologue.ly"

% I Remember You, Mulgrew Miller, Wingspan
theTempo = 110
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1:maj7 | af2:min7 df2:7 | gf1:maj7 | f2:min7 bf2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.7
  <c' g' c''>1 |
  <gf' cf''>4. <f' cf''>8 r8 df''4 cs''8 |
  <<
    {bf'1 | <af' bf'>1}
    \new Voice {\voiceTwo f'1 ef'2 d'2}
  >>
  \bar "||"
}
theBass = {
  <af, g>1 |
  <af, gf>4. <df~ f~>8 <df f>2 |
  gf,1 |
  f,2 bf,2
  \bar "||"
}

\include "include/dual.ly"
