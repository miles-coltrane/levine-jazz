\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
   f1:min | r1 | df:7 | c:alt
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  a'8 bf a f  g a g ef |
  f g f df  ef f ef c |
  \tuplet 5/4 {df4 ef4 f4 af4 c4 } |\break
  \tuplet 5/4 {ef4 c4 df4 f4 af4} |
  c4
  \bar "||"
}

\include "include/treble.ly"
