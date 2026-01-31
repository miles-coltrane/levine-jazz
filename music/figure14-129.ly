\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:min7 e2:dim | ef2:min7 ef2:min7/df | c2:min7.5- f2:7 |
  bf4:min7 ef4:7 ef4:min7 af4:7 | df1:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp\tieUp
      ef''4 df''4 c''4 bf'4 |
      r4 df''4 \tuplet 3/2 { bf'4 gf'!4 bf4} |
      f'2.~ f'8 ef'8 | \break
      df'4~ \tuplet 3/2 {df'8 ef'8 f'8} <df' gf' af'>4 \tuplet 3/2 {af'8 bf'8 e'8}
    }
    \new Voice {\voiceTwo
      <ef' af'>2 <df' g>2 |
      <df' gf'>2 s2 |
      <gf bf>2 a2 | \break
      af4 g4 s4 c'4
    }
  >> |
  <f bf df'>1
  \bar "||"
}
theBass = {
  f,2 e,2 |
  ef,2 df,2 |
  c,2 <f, ef>2 | \break
  bf,4 ef,4 ef,4 <af, gf>4 |
  df,1
  \bar "||"
}

\include "include/dual.ly"
