\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df2:maj7 b2:7 | a2:maj7 b2:7 | bf1:maj7.3-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <c' f'>4.  <a~ cs'~>8 <a cs'>2 |
  <gs cs'>4. <a~ cs'~>8 <a cs'>2|
  <c' df' f' a'>1
  \bar "||"
}
theBass = {
  df4.     <b,~ ds~>8 <b, ds>2 |
  <a, e>4. <b,~ ds~>8 <b, ds>2 |
  <bf, g>1
  \bar "||"
}

\include "include/dual.ly"
