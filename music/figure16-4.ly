\version "2.24.4"
\include "include/prologue.ly"

% Spring Is Here, Kenny Barron, Maybeck Recital Hall Series
theTempo = 120
theKey = g
theSignature = 4/4
theChords = \chordmode {
  g2:dim g2:maj7.5+
}
theTreble = {
 <<
   {\stemUp\tieUp fs'2. fs'8 g'8}
   \new Voice {\voiceTwo <g bf cs'>2 <fs b ds'>2}
 >>
  \bar "||"
}
theBass = {
  g,1
  \bar "||"
}

\include "include/dual.ly"
