\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | af1:7 | r | a:min
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 r8 c'' | r4 f4~ f8 ef16 df16 c8 bf8| af g gf f ef df c bf | a1
  \bar "||"
}

\include "include/treble.ly"
