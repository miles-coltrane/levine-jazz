\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  r2 | bf1:7 | ef:7 | bf:7 |
  b2:min7 e2:7 | ef1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 2 d''4 f4
  \bar "||"
  af,4 r8 c4 ef4 c8 |
  df4 c8 bf8 a8 c8 bf8 gf8 |
  f eg d c bf g af bf | \break
  b cs d fs c b gs fs | bf4
  \bar "||"
}

\include "include/treble.ly"
