\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:maj7| r1 | e:maj7 | a:maj
}
theTreble = \relative {
  \partial 2
  \tuplet 3/2 {g'8 bf8 c8}
  \tuplet 3/2 {d ef f} |
  \tuplet 3/2 {bf, c d}
  \tuplet 3/2 {g, af bf}
  \omit TupletNumber
  \tuplet 3/2 {ef, f g}
  \tuplet 3/2 {e fs gs} |
  \tuplet 3/2 {b e b}
  \tuplet 3/2 {ds gs, cs}
  \tuplet 3/2 {fs, b ds,}
  \tuplet 3/2 {gs e cs~} | \break
  cs1
  \bar "||"
}

\include "include/treble.ly"
