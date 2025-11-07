\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:7.11+ d:7.9+ | g:min7 af:maj7 | cf:maj7 d:7.9-.11+ | g1:sus7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  a''2~ a8 g f d | c4. bf8~ bf2 | <df, gf bf>2 <ef af b>4. <c~ f~ a~ d~>8 | <c f a d>1
  \bar "||"
}
theBass = {
  <g c'df' f'>2 <fs c' f'>2 |
  <f a bf d'>4. <g~ af~ c'~ ef'~>8 <g af c' ef'>2 |
  <cf ef af>2 <d fs c'>4. <g,~ g~>8 |
  <g, g>1
  \bar "||"
}

\include "include/dual.ly"
