\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 b4.:7.11+ | bf1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 2 r8 <cs' f'>4.
  <c' d' g'>8 <c' d' g'>8 r4 r2
  \bar "||"
}
theBass = {
  \partial 2
  r8 <b, ds a>4. |
  <bf, af>8 <bf, af>8 r4 r2
  \bar "||"
}

\include "include/dual.ly"
