\version "2.24.4"
\include "include/prologue.ly"

% But Beautiful, Jimmy Van Heusen
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c4:sus7 c4:7.9- | f1:maj7
}
theTreble = \relative {
  <<
   {bf'4 g4}
   \new Voice { \voiceTwo <bf, f'>2 }
  >> <bf d f>4 <bf df e>4 |
  <c e a>1
  \bar "||"
}
theBass = {
  g,2 c2 | f,1
  \bar "||"
}

\include "include/dual.ly"
