\version "2.24.4"
\include "include/prologue.ly"

% All God's Chillun Got Rhythm, Kenny Barron, The Only One
theTempo = 280
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2 d2:min7 | g2:min7 c2:7 | a2:min7 af2:7 | df2:maj7 gf2:7.11+ | f1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <g a c'>2 <a c' f'> |
  <<
    {\stemUp d'4 g'2 e'4}
    \new Voice {\voiceTwo bf1}
  >> |
  <c' g' c''>2 <c' f' c''>2 |
  <c' ef' af' c''>2 <ef' af' c''>2 |
  <g a c'>2

  \bar "||"
}
theBass = {
  f,2 d, |
  g, c, |
  <a, g> <af, gf> |
  <df f> <gf, ff> |
  f,2
  \bar "||"
}

\include "include/dual.ly"
