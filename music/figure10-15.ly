\version "2.24.4"
\include "include/prologue.ly"

% African Queen, Horace Silver, The Cape Verdean Blues
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 8
  c'8 |
  ef16 f8. f16 fs8. fs16 g8. g16 fs8. |
  gf16 f8. f16 ef8. ef16 c8. c16 bf8.
  \bar "||"
}

\include "include/treble.ly"
