\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Harry Warren
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 | c1:maj7 | c1:maj7 | fs1:min7
}
theTreble = {
  \partial 2 e''4. d''8
  \bar "||"
  <<
    { \stemUp d''4 c''4 }
    \new Voice { \voiceTwo <e' a'>2 }
  >> <b~ e'~>2 |
  <b e'>2 c'8 e' g' c'' |
  <a e' b'>1
  \bar "||"
}
theBass = {
  \partial 2 r2
  \bar "||"
  <c b>2 <c~ e~>2 |
  <c e>1 |
  fs,1
  \bar "||"
}

\include "include/dual.ly"
