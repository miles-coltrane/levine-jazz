\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:7 | r1 | e:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r4 r8 c''16 b16 c8 a16 gs16 a8 bf16 a16 | bf8 g16 fs16 g8 a16 gs16 a8 f16 e16 f8 gs16 g16 | \break
  gs8 e16 ds16 e8 g16 fs16 g8 d16 cs16 d4
  \bar "||"
}

\include "include/treble.ly"
