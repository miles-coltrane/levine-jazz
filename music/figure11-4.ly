\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  fs2:7 b:7 | e:7 a:7 | d:7 g:7 | c:7 f:7 | gf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <e' gs cs>2 <ds gs cs> |
  <d fs b> <cs fs b> |
  <c e a> <b e a> |
  <bf d g> <a d g> |
  <c d f>1
  \bar "||"
}
theBass = {
  <fs as>2 <b, a> | <e gs> <a, g> | <d fs> <g, f> | <c e> <f, ef> | <bf, af>1
  \bar "||"
}

\include "include/dual.ly"
