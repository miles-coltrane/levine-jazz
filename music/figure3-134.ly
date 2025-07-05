\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  g2.:7 | gs:dim | a:min7
}
theTreble = {
  <<
    { \tieUp e'2~ e'8 c'8 | g'2~ g'8 f'8}
    \new Voice {\voiceTwo  b2. | b2.}
  >> |
  <g c' d'>2.
  \bar "||"
}
theBass = {
  <g, f>2. |
  <gs, f>2. |
  <a,>2.
  \bar "||"
}

\include "include/dual.ly"
