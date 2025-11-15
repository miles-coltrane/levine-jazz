\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 af:maj7.11+ | cf:maj7.11+
}
theTreble = \relative {
  \tuplet 3/2 {r8 f'8 g8}
  \tuplet 3/2 {bf c d}
  \tuplet 3/2 {f g bf}
  \tuplet 3/2 {c bf c} |
  bf f~ f2.
  \bar "||"
}
theBass = {
  <f a bf d'>2 <g af c' d'>2 |
  <bf cf' ef' f'>1
  \bar "||"
}

\include "include/dual.ly"
