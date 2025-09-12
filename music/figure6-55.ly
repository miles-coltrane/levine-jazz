\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  e'8 c e g  f d f a |
  g e g b  a f a c | \break
  b g b d  c a c e |
  d b d f c2  \bar "||" \break
  e8 g e c d f d b |
  c e c a b d b g | \break
  a c a f g b g e |
  f a f d c2
  \bar "||"
}

\include "include/treble-aligned.ly"
