\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:min7 e4:min7 a4:7 | d2:maj7 b2:maj7 | af4:7 a4:7.5+ bf4:7 e4:7 |
  ef2:min7 af4:7 s4 | df1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp\tieUp
      ef''4 df''4 <d' g' b'>4 <cs' fs' a'>4 |
      cs''4. c''16 b'16 as'4. fs'16 gs'16 |
      f'2. fs'16 d'8. | \break
      f'4~ \tuplet 3/2 {df'8 ef'8 f'8} <f' af'>4 <e' af'>4
    }
    \new Voice {\voiceTwo
      <ef' af'>2 s2 |
      <e' a'>2 <cs' fs'>2 |
      c'4 cs'4 d'4 <gs b>4 | \break
      <gf bf df'>2 c'2
    }
  >> |
  <bf ef' af'>1
  \bar "||"
}
theBass = {
  <f bf>2 <e a>4 <a, g>4 |
  <d fs b>2 <b, gs>2 |
  <af, gf>4 <a, g>4 <bf, af>4 <e, d>4 | \break
  ef,2 <af, gf>2 | <df f>2
  \bar "||"
}

\include "include/dual.ly"
