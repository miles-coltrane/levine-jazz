\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2. |
  a2:min7 bf2:min7 |
  cf2:maj7 c2:7.11+ |
  df2:7.11+ d2:alt | \break
  ef2:7.9+ e2:maj7  |
  f2:min7 fs2:min7
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 3.2
  \partial 2. g'4 a'4 b'4
  \bar "||"
  <<
   {\stemUp d''4 c''4 }
   \new Voice {\voiceTwo <c' g'>2 }
  >> <df' af' ef''>2 |

  <ef' af' ef''>2 <d' fs' a' d''>2 |

  <<
   {\stemUp \tuplet 3/2 {bf'4 g'4 bf'4}}
   \new Voice {\voiceTwo <ef' g'>2}
  >> <f' bf'>2 | \break

  <gf' bf'>4 g'4
  <<
    {\stemUp gs'4 as'4^\markup\center-align{"♯4"} | bf'4 af'4 }
    \new Voice {\voiceTwo d'2 | <ef' g'>2 }
  >> <ef' gs' b'>2

  \bar "||"
}
theBass = {
  \partial 2. r4 r2 |
  <a, e b>2 <bf, f c'>2 |
  <cf bf>2 <c e bf>2 |
  <df f cf>2 <d fs c'!>2 | \break
  <ef g df'>2 <e gs>2 |
  <f af c'>2 <fs a cs'>
  \bar "||"
}

\include "include/dual.ly"
