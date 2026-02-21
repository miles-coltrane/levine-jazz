\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Freddie Hubbard, Hub Tones
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:7 | d2.:7.9-.11+  g4:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {
      \stemUp
      c''2 \tuplet 3/2 {c''4 c'' c''} |
      c'' a' <fs' b'> c'' |
      d''8 af'8 d''8 af'8~ af'4.
    }
    \new Voice { \voiceTwo
      c'1 |
      e'1
      ef'2.
    }
  >>
  <a' d'' g''>8 | r1
  \bar "||"
}
theBass = {
  <a, g>1 |
  <d fs c'>1 |
  <d~ fs~  c'~>2.
  <d fs  c'>8 <f b e'>8 |
  r1
  \bar "||"
}

\include "include/dual.ly"
