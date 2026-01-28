\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:maj7/c | r1 | c1:sus4.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 c'4 |
  <e' f' a' c''>4. <a~ c'~ e'~ g'~>8 <a~ c'~ e'~ g'~>2 |
  <a c' e' g'>2. c'4 |
  <df' f' g' c''>4. <c'~ df'~ f'~ g'~>8 <c' df' f' g'>2
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <c,~ c~>1 |
  <c, c>1 |
  <c, c>1
  \bar "||"
}

\include "include/dual.ly"
