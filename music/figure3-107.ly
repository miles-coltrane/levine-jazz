\version "2.24.4"
\include "include/prologue.ly"

% I Thought About You, Jimmy Van Heusen
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:min7.5- e:alt | a:7 d:alt | g1:7
}
theTreble = {
  <<
    {c''8\rest f'8 a'8 c''8 e'' ef'' d'' <cs'~ fs'~ a'~> | <cs' fs' a'>2 bf'4 a'4 | a'8 f'8 f'8 f'8~ f'2 }
    \new Voice { \voiceTwo <cs' e'>2 <g' c''>4. s8 | s2 <c' f'>2 | <b e'>1 }
  >>
  \bar "||"
}
theBass = {
  <b, e g>2 <e gs d'>4. <a,~ g~>8 |
  <a, g>2 <d fs>2 |
  <g, f>1
  \bar "||"
}

\include "include/dual.ly"
