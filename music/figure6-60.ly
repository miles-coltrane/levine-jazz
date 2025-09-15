\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \tuplet 3/2 {c'8 ef gf} \tuplet 3/2 {cs, e g}
  \tuplet 3/2 {ds fs a} \tuplet 3/2 {e g bf} |
  \omit TupletNumber
  \tuplet 3/2 {fs a c} \tuplet 3/2 {g bf df}
  \tuplet 3/2 {a c ef} \tuplet 3/2 {as, cs e} |
  c1 \bar "||" \break
  \tuplet 3/2 {gf'8 ef c} \tuplet 3/2 {e cs as}
  \tuplet 3/2 {ef' c a} \tuplet 3/2 {df bf g} |
  \tuplet 3/2 {c a fs} \tuplet 3/2 {bf g e}
  \tuplet 3/2 {a fs ds} \tuplet 3/2 {g e cs} |
  c1 \bar "||"
}

\include "include/treble-aligned.ly"
