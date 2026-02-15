\version "2.24.4"
\include "include/prologue.ly"

% Four, Mulgrew Miller, From Day To Day
theTempo = 280
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7 | r1 | ef:min7| r1 | f:min7 | r1 | af:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r2 d'8 ef g bf | d4 bf8 d8 bf2 | r2 f8 gf8 bf df8 | f4 df8 f8 df2 |\break
  r2 g,8 af8 c8 ef8 | g4 ef8 g8 ef2 | r2 bf8 cf8 ef8 gf8 | df'4 bf8 df8 r2
  \bar "||"
}

\include "include/treble.ly"
