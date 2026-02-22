\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Freddie Hubbard, Hub Tones
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 |
  a1:min7 |
  g2:min7 c2:7 |
  fs1:min7
}
theTreble = {
  \partial 2 e''4. ef''8
  \bar "||"
  <<
    { \stemUp d''4 c''8 }
    \new Voice { \voiceTwo <c' g'>4. }
  >> <g~ b~ c'~ e'~>8 <g b c' e'>2 |
  <<
    {r4 r8 c'8}
    \new Voice { \voiceTwo <a bf d' e'>2 }
  >> <bf d' e'>8 g'8 <e' a' c''>8 d''8 |
  <a e' b'>1
  \bar "||"
}
theBass = {
  \partial 2 r2
  \bar "||"
  <a, e b>4. a,8~ a,2 |
  <g, f>2
  << {s4 bf4} \new Voice { \voiceTwo c2 } >> |
  <fs, cs gs>1
  \bar "||"
}

\include "include/dual.ly"
