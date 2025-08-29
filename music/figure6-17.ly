\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt | c:min7 |
  f:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \tuplet 3/2 {e'8 fs a}
  \tuplet 3/2 {fs g bf}
  \tuplet 3/2 {g a c}
  \tuplet 3/2 {a bf d} |
  \omit TupletNumber
  \tuplet 3/2 {bf c ef}
  \tuplet 3/2 {c df f}
  \tuplet 3/2 {df ef g}
  \tuplet 3/2 {ef f a} | \break
  \tuplet 3/2 {f g bf}
  \tuplet 3/2 {g a c}
  \tuplet 3/2 {bf a f}
  \tuplet 3/2 {a g ef} |
  \tuplet 3/2 {g f d}
  \tuplet 3/2 {f ef c}
  \tuplet 3/2 {ef d b_\markup\center-align{"♯11"}}
  \tuplet 3/2 {d c a}
  \bar "||"
}

\include "include/treble-aligned.ly"
