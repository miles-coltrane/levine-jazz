\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode { }
theTreble = \relative {
  r8 c'8 \tuplet 3/2 {e g b} c a f d |
  e g~ g b16 d16 \tuplet 3/2 {e8 c a} f fs |
  g8 b d f g e16 c16 a8 as | \break
  b8 d16 f16 a8 c,8~ c4 b8 c8
  \bar "||"
}

\include "include/treble.ly"
