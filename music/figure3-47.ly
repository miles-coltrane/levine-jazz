\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:sus7.9- | g:maj7
}
theTreble = {
  <<
    {c''4\rest d'' d'' d''}
    \new Voice {\voiceTwo c'1}
  >> |
  d''8 c''8 g' ef' d'4 c''8 <d'~ fs'~ b'~>8 |
  <d' fs' b'>1
  \bar "||"
}
theBass = \relative {
  <a, f'>1 |
  <d~ ef~ g~ a~>2.
  \stemUp <d ef g a>8 g,8~ |
  g1
  \bar "||"
}

\include "include/dual.ly"
