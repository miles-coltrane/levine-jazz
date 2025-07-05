\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7.5- | g:alt
}
theTreble = \relative {
  r8 g'8 \tuplet 3/2 {af8 c e} g8 f4. |
  r8 bf,8 \tuplet 3/2 {cf8 ef g} bf8 af4. |
  \bar "||"
}
theBass = {
  <d g af c'>1 |
  <f bf cf' ef'>
  \bar "||"
}

\include "include/dual.ly"
