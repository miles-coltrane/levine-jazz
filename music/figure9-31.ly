\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:min7 | df:min7 | df:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 g'8 bf c d~ d4 | c8 bf g f~ f2
  \bar "||"
}

\include "include/treble.ly"
