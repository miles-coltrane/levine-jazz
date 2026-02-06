\version "2.24.4"
\include "include/prologue.ly"

% Dance Cadaverous, Wayne Shorter, Speak No Evil
theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  b2.:maj7.3- | r2.
  c2.:maj7.3- | r2.
}
theTreble = \relative {
  <cs'~ d~ as'~>2. | <cs d as'>2 fs8 as |
  <d,~ ef~ b'~>2. | \tieUp <d ef b'~>2 b'8 a8
  \bar "||"
}
theBass = {
  <b,~ fs~>2. | <b, fs>2. |
  <c~ g~>2. | <c g>2.
  \bar "||"
}

\include "include/dual.ly"
