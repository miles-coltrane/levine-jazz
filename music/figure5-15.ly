\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e2:min7 d4:min7 g4:7 | b4:/c c2.:maj7
}
theTreble = \relative {
  <<
    {\stemUp g''8 f e d e4. d8}
    \new Voice { \voiceTwo g,2 <f a>4 g4}
  >> |
  <ds fs b>4
  <d g b>2.
  \bar "||"
}
theBass = {
  <e d'>2
  <<
   {\stemUp c'4 b4 | b4 a2. }
   \new Voice { \voiceTwo d2 | c1 }
  >>
  \bar "||"
}

\include "include/dual.ly"
