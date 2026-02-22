\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Freddie Hubbard, Hub Tones
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | gf1:7.11+ | fs1:7.11+ | e2:min7 a2:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  <<
    {\stemUp\tieUp
      d''4 c''8 <b~ e'~>8 <b e'>2 |
      e'4. c'8  e'8 g'8 c''8 d''8 |
      s1 |
      r2 r8 a'4 e'8
    }
    \new Voice {\voiceTwo
      <e' a'>4. s8 s2 |
      <bf c'>1 |
      <a d' g' b'>1 |
      <g d'>2 <bf cs'>2
    }
  >>
  \bar "||"
}
theBass = {
  <c b>4. <c~ e~>8 <c e>2 |
  <gf, ff>1 |
  <f, ef>1 |
  e,2 <a, g>2
  \bar "||"
}

\include "include/dual.ly"
