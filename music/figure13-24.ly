\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7  c2:7 | cs2:min7 fs2:7 | f1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 a'8 fs g a bf c | cs ds e fs  gs b as gs | a f c bf a f' r4
  \bar "||"
}
theBass = {
  <f bf d'>2 <e bf d'>2 |
  <e gs b ds'>2 <e gs as ds'>2 |
  <ef g a d'>1
  \bar "||"
}

\include "include/dual.ly"
