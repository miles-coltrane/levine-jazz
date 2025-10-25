\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  b'8 g e c d f a c | d b g e f a c e | f d b g a c e g | \break
  a f d b c2 | b'8 g e c b d f a | g e c a g b d f | \break
  e c a f e g b d | c a f d c2
  \bar "||"
}

\include "include/treble.ly"
