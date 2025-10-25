\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  c'8 e g b c a f d | e g b d e c a f | g b d f g e c a | \break
  b d f a b g e c | c e g b a f d b | a c e g f d b g | \break
  f a c e d b g e | d f a c b g e c
  \bar "||"
}

\include "include/treble.ly"
