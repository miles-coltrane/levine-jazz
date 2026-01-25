\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2 fs2:dim |
  c2/g fs4:dim e4:dim |
  d2:min7 g4:7 a4:7.9- |
  d1:min7 |
  g1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 1.8
  <<
    { \stemUp\tieUp
      a'8 b'8 c''2~ c''8 b'8 |
      c''2 b'8 a'8 g'8 f'8 |
      g'4 d'2
    }
    \new Voice {\voiceTwo
      e'2 <ef' fs'>2 |
      <e' g'>2 <c' ef' fs'>4 <bf df'>4 |
      <a c'>2 b4
    }
  >> <g bf cs' e'>4 |
  <a c' f'~>1 |
  <f b f'>1
  \bar "||"
}
theBass = {
  f,2 fs,2 |
  g,2 fs,4 e,4 |
  d,2 <g, f>4 a,4 |
  d,1 |
  g,1
  \bar "||"
}

\include "include/dual.ly"
