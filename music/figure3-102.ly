\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r1 | c:min7.5- | f:7.9- | bf:maj7
}
theTreble = {
  r4 d' ef' f' |
  <<
    { \tieUp gf'1~ | gf'4 gf' gf' f' }
    \new Voice {\voiceTwo <bf ef'>1 | <a d'>1 }
  >> |
  <g c' f'>1
  \bar "||"
}
theBass = {
  r1 | c1 | <f, ef>1 | <bf, d>1
  \bar "||"
}

\include "include/dual.ly"
