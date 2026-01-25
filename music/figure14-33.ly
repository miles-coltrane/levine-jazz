\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min7 d2:min7 | ef2:min7 f2:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <bf d' ef' g'>2 <c' e' f' a'>2 |
  <df' f' gf' bf'>2 <a d' fs' a'>2
  \bar "||"
}
theBass = {
  c,2 d,2 | ef,2 <f, ef>2
  \bar "||"
}

\include "include/dual.ly"
