\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | ef1:7.11+ | af:sus7.9- | c/df| a2:sus7 a:7
}
theTreble = {
  \partial 4 bf'4 |
  <df' f' a'>4 bf'8 bf r8 df'4 ef'8 |
  f'4 <a df'>2 c'8 <e~ g~ c'~ ef'~>8 |
  <e g c' ef'>1 |
  <<
    { \stemUp fs'8 d'8 e'8 }
    \new Voice { \voiceTwo <b d'>4. }
  >> <b~ cs'~ fs'~>8 <b cs' fs'>2
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <ef g>1 |
  r4 <af,~ gf~>2
  <af, gf>8 df,8~ |
  df,1 |
  <a, g>4. <a,~ g~>8 <a, g>2
  \bar "||"
}

\include "include/dual.ly"
