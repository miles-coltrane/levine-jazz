\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min7 f2:7 bf1:maj7 | f1:min7 a1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp\tieUp
      d''2. a'4 |
      c''4 bf'4 f'4 g'4 |
      a'2 a'2~
      a'1
    }
    \new Voice {\voiceTwo
      <ef' g'>1 |
      <d' f'>2 s2 |
      <d' g'>1
      cs'1
    }
  >>
  \bar "||"
}
theBass = {
  <c bf>2 <f a>2 |
  <bf, a>1 |
  e,1 |
  <a, g>1
  \bar "||"
}

\include "include/dual.ly"
