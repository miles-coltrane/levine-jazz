\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2/bf bf2:sus4 | ef2:maj7/bf bf2:7 | e2:min7 a2:7 | af2:maj7 d4:min7.5- g4:7.5+ |
  c4:min b4:7 bf4:min7 a4:7.11+ | af4:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <e' g' c''>2 <c' ef' af' c''>2
  <<
    {\stemUp\tieUp
      r4 bf'8 ef''8 d''8 c''8 bf'8 af'8 |
      <g d' g'>2 <b cs' g'>2 |
      g'4 f'8 c''8 bf'8 g'8 ef'8 b8
    }
    \new Voice {\voiceTwo
      <d' ef' g'>2 <d' g'>2 |
      s1 |
      <bf c' ef'>2 <c' e'>4 b4
    }
  >> | \break
  <bf ef'>4 <a df' ef'>4 <af df' ef'>4 <g df' ef'>4 |
  <g c' ef'>4
  \bar "||"
}
theBass = {
  <bf, bf>2 <bf, af>2 |
  <bf, bf>2 <bf, af>2 |
  e,2 <a, g>2 | <af, g>2 <d af>4 <g, f>4 | \break
  c4 b,4 bf,4 a,4 |
  af,4
  \bar "||"
}

\include "include/dual.ly"
