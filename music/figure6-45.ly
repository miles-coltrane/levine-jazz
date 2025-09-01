\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r4 | f2.:min | ef:min7/f | f:min | ef:7/f |
  e:sus7.9- | ef:min7 | ef:7.9-11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 \tuplet 3/2 {r8 c' f} \bar "||"
  \tuplet 3/2 {af8 bf4~} bf4~ \tuplet 3/2 {bf8 af8 bf8} |
  \slashedGrace b8
  c2~ \tuplet 3/2 {c8 bf8 af8} |
  f2~ \tuplet 3/2 {f8 af8 f8} |
  ef2~ \tuplet 3/2 {ef8 f8 ef8} | \break
  d4. f8 \tuplet 3/2 {a f af} |
  \tuplet 3/2 {f gf f~} f4~ \tuplet 3/2 {f8 ef df} |
  c16 cs16 e8~ e2
  \bar "||"
}

\include "include/treble.ly"
