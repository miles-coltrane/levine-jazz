\version "2.24.4"
\include "include/prologue.ly"

% I Remember You, Victor Schertzinger
theTempo = 110
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1:maj7 | af2:min7 df2:7 | g2:min7 c2:7 | f2:min7 bf2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.7
  <c' g' c''>1 |
  <gf' cf''>4. <f' cf''>8 r8 df''4 cs''8 |
  <<
    {bf'1~ | bf'1}
    \new Voice {\voiceTwo <bf f'>2 <bf e'>2 | <af ef'>2 <af d'>2}
  >>
  \bar "||"
}
theBass = {
  <af, g>1 |
  <af, gf>4. <df~ f~>8 <df f>2 |
  g,2 c2 |
  f,2 bf,2
  \bar "||"
}

\include "include/dual.ly"
