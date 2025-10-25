\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  b'8 g e c c' a f d | d' b g e e' c a f | f' d b g g' e c a | \break
  a' f d b c2 | b'8 g e c a' f d b | g' e c a f' d b g | \break
  e' c a f d' b g e | c' a f d c2
  \bar "||"
}

\include "include/treble.ly"
