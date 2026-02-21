\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | e2:min7.5- a2:7.9- | d2:min7 df2:7 | c2:min7 f2:7 | bf1:7 | bf2:min7 ef2:7 |
  a2:min7 d2:7 | af2:min7 df2:7 | g1:7 | c1:7 | f2 d2:7 | g2:min7 c2:7
}
theTreble = \relative {
  <e' a c>1 |
  <d g bf>2 <df gf bf>2 |
  <c f a>2 <cf f af>2 |
  <bf ef g>2 <a d g>2 |
  <c d f>1 |
  <df f c'>2 <df f bf>2 | \break

  <c e b'>2 <c e a >2 |
  <cf ef bf'>2 <cf ef af>2 |
  <bf d a'>1 |
  <bf d a'>1 |
  <a f'>2 <c fs>2 |
  <bf g'>2 <bf d a'>2

  \bar "||"
}
theBass = {
  f1 | e2 <a, g>2| d2 df2 | c2 <f, ef>2 | <bf, af>1 | <bf, af>2 <ef g>2 | \break
  <a, g>2 <d fs>2 | <af, gf>2 <df f>2 | <g, f>1 | <c e>1 | f,2 d2 | <g f>2 <c e>2
  \bar "||"
}

\include "include/dual-aligned.ly"
