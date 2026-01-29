\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:7/df | df1:6 | a1:7/df | df1:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  a2. df'8 bf8~ | bf1 |
  a2. df'8 bf8~ | bf1
  \bar "||"
}
theBass = {
  r8 <df, g, e>4 r8 <df, g, e>2 |
  r8 <df, af, e>4 r8 <df, af, e>2 |
  r8 <df, g, e>4 r8 <df, g, e>2 |
  r8 <df, af, e>4 r8 <df, af, e>2
  \bar "||"
}

\include "include/dual.ly"
