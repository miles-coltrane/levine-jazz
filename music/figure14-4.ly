\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  c2.:maj7 | e:alt | f:maj7 | a:alt
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <b' d'' e'' g''>2. |
  <d' gs' c'' e''> |
  <e' g' a' c''> |
  <cs' f' a'>
  \bar "||"
}
theBass = {
  c,2. | e, | f, | <a, g>
  \bar "||"
}

\include "include/dual.ly"
