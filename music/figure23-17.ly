\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e2:min7.5- a2:alt | d2:min7.5- g2:alt |
  c2:min7.5- f2:alt | bf1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  bf'16 d bf g   e g bf e  ef g ef bf  g df' bf g |
  f c' af f  d af' f d   cf ef f af  ef f af cf | \break
  gf bf ef, gf  bf, c e gf  a, cs df fs  cs ds fs a | bf4 r4 r2
  \bar "||"
}
theBass = {
  <e a bf d'>2 <g c' df' f'>2 |
  <d g af c'>2 <f bf cf'>2 |\break
  <c f gf bf>2 <ds gs a>2 | <d f g c'>4 r4 r2
  \bar "||"
}

\include "include/dual.ly"
