\version "2.24.4"
\include "include/prologue.ly"

% What The World Needs Now Is Love, Mulgrew Miller
theTempo = 105
theKey = c
theSignature = 3/4
theChords = \chordmode {
  c1.:6 a2.:min7 d:7
}
theTreble = \relative {
  <<
  {\stemUp \tieUp a'8 g a e g4~ | g4 e4 g4 | b2~ b8 d8 | b8 bf8 a2}
  \new Voice { \voiceTwo d,2.~ | d2. | <c e>2. | e2.}
  >>
  \bar "||"
}
theBass = {
  <c~ e~ b~>2. |
  <c e b>2. |
  <a, g>2. |
  <d fs c'>2.
  \bar "||"
}

\include "include/dual.ly"
