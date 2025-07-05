\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g\breve:maj7 | c:maj7.3-/g
}
theTreble = \relative {
  <fs' a b d>1 |
  <b, d e g>1 |
  <d~ ef~ g~ b~>2.
  <d ef g b>8
  <d~ ef~ g~ a~>8 |
  <d ef g a>1
  \bar "||"
}
theBass = {
  g,1| g,1 | g,2.~ g,8 g,8~ | g,1
  \bar "||"
}

\include "include/dual.ly"
