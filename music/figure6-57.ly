\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \tuplet 3/2 {c'8 ef g} \tuplet 3/2 {d f a}
  \tuplet 3/2 {ef g b} \tuplet 3/2 {f a c} |
  \omit TupletNumber
  \tuplet 3/2 {g b d} \tuplet 3/2 {a c ef}
  \tuplet 3/2 {b d f} c4
  \bar "||" \break
  \tuplet 3/2 {g'8 ef c} \tuplet 3/2 {f d b}
  \tuplet 3/2 {ef c a} \tuplet 3/2 {d b g} |
  \tuplet 3/2 {c a f} \tuplet 3/2 {b g ef}
  \tuplet 3/2 {a f d} c4
  \bar "||"
}

\include "include/treble-aligned.ly"
