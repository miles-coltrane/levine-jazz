\version "2.24.4"
\include "include/prologue.ly"

% All The Things You Are, Jerome Kern
theTempo = 150
theKey = af
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:min7 | ef:7 | af:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <ef' af'>1 |
  <<
    { \stemUp df''2. af'4 | g'4 g'4 g'4 g'4 | g'4 c''2.}
    \new Voice { \voiceTwo af'1 | df'1 | c'1}
  >>
  \bar "||"
}
theBass = {
  g, 1 | bf,1 | ef,1 | af,1
  \bar "||"
}

\include "include/dual.ly"
