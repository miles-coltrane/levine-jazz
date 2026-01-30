\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf4:min7 | a1:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  \partial 4
  <df' f c'>8 <c~ e~ b'~>8 |
  <c e b'>1
  \bar "||"
}
theBass = {
  \partial 4
  <bf, af>8 <a,~ g~>8 |
  <a, g>1
  \bar "||"
}

\include "include/dual.ly"
