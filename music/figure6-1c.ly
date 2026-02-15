\version "2.24.4"
\include "include/prologue.ly"

% Four, Mulgrew Miller, From Day To Day
theTempo = 280
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:alt | ef:maj7| r1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  af'8 g8 af4 a8 gs8 a4 | b8 as8 b4 cs8 b8 cs4 | d8 cs8 d4 e8 ds8 e4 | \break
  gf8 f8 gf4 af8 g8 af4
  \bar "||"
}

\include "include/treble.ly"
