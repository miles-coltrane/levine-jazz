\version "2.24.4"
\include "include/prologue.ly"

% I Hear A Rhapsody
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2. |
  e2:7.9+ a2:7.11+ |
  d2:alt g2:7 |
  c2:7.9+ f2:min7 | \break
  bf2:sus4 ef2:sus4 |
  af2:min7 df2:alt |
  fs2:7 f2:7.9+ |df4/e cf4/e a2:7.11+ | \break
  d2:7.9- g2:7.5+
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 3.2
  \partial 2. g'4 a'4 b'4
  \bar "||"
  <<
   {\stemUp d''4 c''4 }
   \new Voice {\voiceTwo g'2 }
  >> <cs' fs' b' ds''>2 |

  <f' bf' ef''>2 <e' a' d''>2 |

  <<
   {\stemUp \tuplet 3/2 {bf'4 g'4 bf'4}}
   \new Voice {\voiceTwo <ef' g'>2}
  >> <af ef'! bf'>2 | \break

  <c' ef' g' bf'>2
  <<
    {\stemUp
      \tuplet 3/2 {g'4 af'4 bf'4} |
      bf'4 af'4 <e' b'>2 |
      r4 d'4^\markup\center-align{"♯5"} d'4 d'4
    }
    \new Voice {\voiceTwo
      <af df' f'>2 |
      <cf' ef'>2 s2 |
      as1
    }
  >> |
  <af df' f'>4 <gf cf' ef'>4 <df' ef'>2 | \break

  <c' ef'>2 <b ef'>2

  \bar "||"
}
theBass = {
  \partial 2. r4 r2 |
  <e gs d'>2 <a, g>2 |
  <d fs c'>2 <g, f b>2 |
  <c e bf>2 <f, c g>2 | \break
  <bf, af>2 <ef, ef>2 |
  <af, gf>2 <df f cf'>2 |
  <fs, e>2 <b, ds a>2 |
  e,2 <a,g>2 | \break
  <d fs>2 <g, f>2
  \bar "||"
}

\include "include/dual.ly"
