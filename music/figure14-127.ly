\version "2.24.4"
\include "include/prologue.ly"

% Skylark, Hoagy Carmichael
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:maj7 f2:min7 | g2:min7 af2:maj7.11+ | df2:7.11+ c2:7 | f2:min7 g2:alt |
  c2:min7 gf2:7 | f1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <d' g' c''>2 <ef' af' c''>2 |
  <<
    {\stemUp\tieUp
      r4 bf'8 ef''8 d''8 c''8 bf'8 af'8 |
      <cf' ef' g'>2 <bf d' g'>2 |
      g'4 f'8 c''8 bf'8 g'8 ef'8 cf'8
    }
    \new Voice {\voiceTwo
      <bf f'>2 g'2 |
      s1 |
      <af c'>2 <cf' ef'>2
    }
  >> | \break
  <bf ef'>2 <bf ef'>2 |
  <a ef'>2
  \bar "||"
}
theBass = {
  <ef, bf,>2 <f, c>2 |
  <g, d>2 <af, ef>2 |
  <df f>2 <c e>2 |
  <f, ef>2 <g, f>2 | \break
  c2 <gf, ff>2 |
  <f, ef>2
  \bar "||"
}

\include "include/dual.ly"
