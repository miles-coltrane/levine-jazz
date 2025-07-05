\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:min7.5- d:alt | g1:sus7
}
theTreble = {
  <<
    {b'4\rest \tuplet 3/2 {g'8 c''8 d''8} ef''4. d''8}
    \new Voice {\voiceTwo <g c' ef'>2 <f' bf'>2}
  >> |
  <a c' f' g'>1
  \bar "||"
}
theBass = {
  a,2 <d fs c'>2 | g,1
  \bar "||"
}

\include "include/dual.ly"
