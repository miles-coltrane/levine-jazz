\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 r8 c'16 c16 ef32 f16 r32 f32 fs16 r32 fs32 g16 r32 \stemUp bf32 b16 r32 | \break
  c16 c16 r8 bf16 bf16 r8 g16 g16 r8 gf16 gf f32 f ef ef  | \break
  c4 c4 c4 c4 |
  ef16 a,16 r8 r4 r2
  \bar "||"
}

\include "include/treble-aligned.ly"
