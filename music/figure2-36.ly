\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 | ef:maj7 | af:7
}
theTreble = \relative {
  <<
    { \tieUp g'1~ | g4 f f g }
    \new Voice { \voiceTwo <af, ef'>1 | <af d>1 }
  >> |
  <f g bf>1|
  <f gf bf>1
  \bar "||"
}
theBass = \relative {
  f,1 | bf | ef, | af |
  \bar "||"
}

\include "include/dual.ly"
