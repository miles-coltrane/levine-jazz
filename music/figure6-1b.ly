\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7 | r1 | ef:min7| r1 | f:min7 | r1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  d''2 d8 d4 d8~ | d4 bf4 g4 bf4 | df2 df8 df4 df8~ | df4 bf gf4 bf | \break
  ef2 ef8 ef4 ef8~ | ef4 c4 c8 af8 ef4
  \bar "||"
}

\include "include/treble.ly"
