\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r2. ef1:maj7 | r1 | r1 | bf2:min7 ef2:7 | af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 2. bf'4 bf'4 d''4
  \bar "||"
  <<
    {\stemUp\tieUp
      d''1~ |
      d''4 bf'4 bf'4 g'4 |
      g'4 ef'4 ef'2~ |
      ef'4 g'4 g'4 bf'4
    }
    \new Voice {\voiceTwo\tieDown
      <d'~ g'~>1 |
      <d' g'>1 |
      s1 |
      <af d'>2 <g c'>2
    }
  >> |
  <c' f' bf'>1
  \bar "||"
}
theBass = {
  \partial 2.  r4 r2
  \bar "||"
  <ef,~ bf,~>1 |
  <ef,~ bf,~>1 |
  <ef, bf,>1 |
  bf,2 <ef, df>2 |
  <af, g>1
  \bar "||"
}

\include "include/dual.ly"
