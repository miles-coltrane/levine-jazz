\version "2.24.4"
\include "include/prologue.ly"

% What The World Needs Now Is Love, Burt Bacharach
theTempo = 105
theKey = c
theSignature = 3/4
theChords = \chordmode {
  c2.:maj7 | c:maj7 | a:min7 | d:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  a'8 g a e g4~ |
  g4 e4 g4 |
  <<
    {\stemUp b2~ b8 d8 | b8 a8 a2}
    \new Voice {\voiceTwo <c, e>2. e2.}
  >>
  \bar "||"
}
theBass = {
  <c~ e~ a~>2. |
  <c e a> |
  <a, g> |
  <d fs c'>
  \bar "||"
}

\include "include/dual.ly"
