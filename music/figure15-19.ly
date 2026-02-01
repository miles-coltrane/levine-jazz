\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | f2:sus4 f2:alt | bf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <ef'~ bf'~>1 |
  <ef' bf'>4 a'8 bf'8 df''4 df''4 |
  <c'~ d'~ f'~ a'~>1 |
  <c' d' f' a'>1
  \bar "||"
}
theBass = {
  c1 | f,2 <f a ef'>2 | bf,1~ | bf,1
  \bar "||"
}

\include "include/dual.ly"
