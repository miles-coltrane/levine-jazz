\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = f
theSignature = 4/4
theChords = \chordmode {
  f1:7 | bf:7 | f:7 |
  fs2:min7 b2:7 | bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  a'8 g f e f a c4 | bf4 d f g8 f8 | r8 ef8 b8 d8 c8 g8 bf8 g8 | \break
  cs8 b8 fs4 a4 gs4 | bf1
  \bar "||"
}

\include "include/treble.ly"
