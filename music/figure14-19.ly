\version "2.24.4"
\include "include/prologue.ly"

% Wave, Antonio Carlos Jobim
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. |
  d1:maj7 | ef8/e gf8/g a8/bf c8/df ef2/e | a:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4. b'8 d cs \bar "||"
  <b,~ e~ a~>2. <b e a>8 fs'8 |
  <bf, ef g>8 <df gf bf> <e a cs> <g c e> <bf ef g>4 fs'8 <c~ e~ a~>8 |
  <c e a>1
  \bar "||"
}
theBass = {
  \partial 4. r8 r4 \bar "||"
  <d fs>1 |
  e8 g8 bf8 df'8 e'4. <g~ b~ c'~ e'~>8 |
  <g b c' e'>1
  \bar "||"
}

\include "include/dual.ly"
