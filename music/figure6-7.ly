\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b1:min7/e | a:min7/e | b:min7/e | a:min7/e
}
theTreble = \relative {
  \tuplet 3/2 {b'8 cs b} cs4 \tuplet 3/2 {b8 cs b} cs4 |
  \tuplet 3/2 {d8 e d} e4    \tuplet 3/2 {e8 fs e} fs4 | \break
  \tuplet 3/2 {fs8 g fs} g4  \tuplet 3/2 {g8 a g}  a4 |
  \tuplet 3/2 {a8 b a} b4    \tuplet 3/2 {a8 b a}  b4 |
  \bar "||"
}
theBass = {
  <a cs' d' fs'>4. <a~ cs'~ d'~ fs'~>8 <a cs' d' fs'>4. <g~ b~ c'~ e'~>8 |
  <g b c' e'>4. <g~ b~ c'~ e'~>8 <g b c' e'>4. <a~ cs'~ d'~ fs'~>8 | \break
  <a cs' d' fs'>4. <a~ cs'~ d'~ fs'~>8 <a cs' d' fs'>4. <g~ b~ c'~ e'~>8 |
  <g b c' e'>4. <g~ b~ c'~ e'~>8 <g b c' e'>2
  \bar "||"
}

\include "include/dual.ly"
