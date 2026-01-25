\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | ef
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  af4 gf' f' d' |
  <<
    {ef'1}
    \new Voice { \voiceTwo  r4 <f bf> <fs b> <g c'>}
  >>
  \bar "||"
}
theBass = {
  <bf, d>1 |
  r4 <df, af,> <d, a,> <ef, bf,>
  \bar "||"
}

\include "include/dual.ly"
