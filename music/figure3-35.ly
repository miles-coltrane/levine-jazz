\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d\breve:sus7
}
theTreble = \relative {
  <g c e g>4
  <g~ c~ e~ g~>4
  <g c e g>8
  <g~ c~ e~ g~>4. |
  <g c e g>4.
  <g~ c~ e~ g~>8
  <g c e g>2
  \bar "||"
}
theBass = \relative {
  <d, d'>4
  <d~ d'~>4
  <d d'>8
  <d~ d'~>4. |
  <d d'>4.
  <d~ d'~>8
  <d d'>8 a' d a
  \bar "||"
}

\include "include/dual.ly"
