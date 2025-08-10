\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b4:/c c2. | fs2:min7 b:7
}
theTreble = \relative {
  <ds fs b>4
  <e g c>4 e'4 g4 |
  <<
    {<a b>1}
    \new Voice {\voiceTwo e2 ds2}
  >>
  \bar "||"
}
theBass = {
  <c, g,>1
  fs,2 b,2
  \bar "||"
}

\include "include/dual.ly"
