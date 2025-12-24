\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | g1:min7 | c:7 | f | r4
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 4 c''8 b8 |
  bf a g f e d c b | bf c d e a g e c | \break
  f e d df c bf a g | f4
  \bar "||"
}
theBass = {
  \partial 4 r4 | <g, f>1 | <c e>1 |
  f,1 | f,4
  \bar "||"
}

\include "include/dual.ly"
