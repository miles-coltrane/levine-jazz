\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2. |
  e2:7.9+ ef2:sus4 |
  d2:alt df2:alt |
  c2:7.9+ cf:maj7 | \break
  bf2:sus4 a4:7.9-11+ af4:sus4 |
  g2:alt fs2:min7 |
  f2:min7.5- e2:7 | \break
  ef2:6 df2:6 |
  cf1:6
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 3.2
  \partial 2. g'4 a'4 b'4
  \bar "||"
  <<
   {\stemUp d''4 c''4 }
   \new Voice {\voiceTwo g'2 }
  >> <f' af' c'' ef''>2 |

  <f' bf' ef''>2 <e' a' d''>2 |

  <<
   {\stemUp \tuplet 3/2 {bf'4 g'4 bf'4}}
   \new Voice {\voiceTwo ef'2}
  >> <df' gf' bf'>2 | \break

  <<
    {\stemUp
      bf'4 g'4 \tuplet 3/2 {<bf df' g'>4 af'4 bf'4} |
      bf'4 af'4 <a e' b'>2 |
      r4 d'4 d'4 d'4
    }
    \new Voice {\voiceTwo
      % TODO: get rid of extra tuplet "3" marker
      <c' ef' g'>2 \tuplet 3/2 {s4 <bf df' f'>2} |
      <cf' ef'>2 s2 |
      <af cf' ef'>2 gs2
    }
  >> | \break

  <<
    {f'4 ef'4}
    \new Voice {\voiceTwo <g c'>2}
  >>
  <f bf ef'>4. <ef~ af~ ef'~>8 |
  <ef af ef'>1


  \bar "||"
}
theBass = {
  \partial 2. r4 r2 |
  <e gs d'>2 <ef af df'>2 |
  <d fs c'>2 <df f cf'>2 |
  <c e bf>2 <cf af>2 | \break
  <bf, af>2 \tuplet 3/2 { <a, g>4 <af, gf>2} |
  <g, f>2 <fs, cs gs>2 |
  f,2 <e, d>2 | \break
  <ef, bf,>2 <df, af,>4. <cf,~ gf,~>8 |
  <cf, gf,>1
  \bar "||"
}

\include "include/dual.ly"
