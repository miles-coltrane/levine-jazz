\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  c'8 e g b d, f a c | e, g b d f, a c e | g, b d f a, c e g | \break
  b, d f a c,2 | c8 e g b b, d f a | a, c e g g, b d f | \break
  f, a c e e, g b d | d, f a c c,2
  \bar "||"
}

\include "include/treble.ly"
