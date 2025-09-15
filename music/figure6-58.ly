\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  ef'8 c ef g  f d f a |
  g ef g b  a f a c | \break
  b g b d  c a c ef |
  d b d f c2  \bar "||" \break
  ef8 g ef c d f d b |
  c ef c a b d b g | \break
  a c a f g b g ef |
  f a f d c2
  \bar "||"
}

\include "include/treble-aligned.ly"
