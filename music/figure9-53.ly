\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = f
theSignature = 4/4
theChords = \chordmode {
  bf1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  f8 g a c  g a c d | a c d f  c d f g | d f g a  f g a c | \break
  g a c d  a c d f | f d c a  d c a g | c a g f  a g f d | \break
  g f d c  f d c a  | d c a g c a g f
  \bar "||"
}

\include "include/treble.ly"
