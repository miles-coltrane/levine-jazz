\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | c1:min7.5- | f:alt | bf:maj7
}
theTreble = {
  \partial 4 f'4 |
  <<
    { \tieUp gf'1~ gf'4 gf' gf' f'}
    \new Voice {\voiceTwo <bf ef'>1 | <a df'>1 }
  >> |
  <g c' f'>1
  \bar "||"
}
theBass = {
  \partial 4 r4 | c1 | <g, ef>1 | <bf, d>1
  \bar "||"
}

\include "include/dual.ly"
