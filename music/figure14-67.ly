\version "2.24.4"
\include "include/prologue.ly"

% Chelsea Bridge, Billy Strayhorn
theTempo = 90
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df2:maj7 b2:7 | df1:maj7 | bf1:maj7.3-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  f'4 df'2.~ |
  df'4 bf8 c'8 df'8 ef'8 \tuplet 3/2 {f'8 gf'8 af'8} |
  <c' df' f' a'>1
  \bar "||"
}
theBass = {
  <df f c'>2 <b, ds a>2 |
  <df f c'>4 r4 r2 |
  <bf, g>1
  \bar "||"
}

\include "include/dual.ly"
