\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:7.11+ | d:7.9+ | ef:7.11+ | d:7.9+ |
  ef:7.11+ | d:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  a'8 c a f a c a f |
  a c a f a c a f |
  a c4 a4 c4 a8~ |
  a8 c4 a8 c8 a8 f4 | \break
  a2 a8 c8 a8 f8 | a4 g8 d8 r2
  \bar "||"
}

\include "include/treble.ly"
