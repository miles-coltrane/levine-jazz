\version "2.24.4"
\include "include/prologue.ly"

% You're My Everything, Freddie Hubbard, Hub Tones
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:min7 af2:7 | g2:min7 c2:7 | f1:maj7 | bf1:7.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {\stemUp\tieUp
      c''4 c''4 c''4 c''8 d''8~ |
      d''2.~ d''8 e''8 |
      d''4. c''8 a'4 f'4 |
      \tuplet 3/2 {e'8 f'8 d'8~} d'4~ d'8 e'4 f'8
    }
    \new Voice {\voiceTwo
      <c' g'>2 <c' f'>4. <f'~ a'~ bf'~>8 |
      <f' a' bf'>2 <e' a'>2 |
      <e' a'>2 <c' e'>2 |
      c'1
    }
  >>
  \bar "||"
}
theBass = {
  <a, g>2 <af, gf>4. <g,~ f~>8 |
  <g, f>2 <c bf>2 |
  f,1|
  <bf, af>1
  \bar "||"
}

\include "include/dual.ly"
