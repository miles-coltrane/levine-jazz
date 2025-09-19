\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \tuplet 3/2 {c'8 e gs} \tuplet 3/2 {d fs as}
  \tuplet 3/2 {e gs c} \tuplet 3/2 {fs, as d} |
  \omit TupletNumber
  \tuplet 3/2 {gs, c e} \tuplet 3/2 {bf d fs}
  c2 \bar "||" \break
  \tuplet 3/2 {gs'8 e c} \tuplet 3/2 {fs d bf}
  \tuplet 3/2 {e c gs} \tuplet 3/2 {d' as fs} |
  \tuplet 3/2 {c' gs e} \tuplet 3/2 {bf' fs d} % NOTE: book has B-natural for last tuplet
  c2 \bar "||"
}

\include "include/treble-aligned.ly"
