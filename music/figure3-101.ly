\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:min7.5- | c:7.9+
}
theTreble =  {
  <<
    {d''4\rest f'4 g'4. f'8}
    \new Voice {\voiceTwo <bf df'>1}
  >> |
  ef'8 c'8~ c'2.
  \bar "||"
}
theBass = {
  <g, f>1 |
  <c e bf>1
  \bar "||"
}

\include "include/dual.ly"
