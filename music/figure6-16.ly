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
  \tuplet 3/2 {a'8 bf c}
  \tuplet 3/2 {bf c d}
  \tuplet 3/2 {c d e}
  \tuplet 3/2 {d e fs} |
  \omit TupletNumber
  \tuplet 3/2 {ef f g}
  \tuplet 3/2 {f g a}
  \tuplet 3/2 {g a bf}
  \tuplet 3/2 {a bf c} | \break
  \tuplet 3/2 {bf a g}
  \tuplet 3/2 {a g f}
  \tuplet 3/2 {g f ef}
  \tuplet 3/2 {f ef d} |
  \tuplet 3/2 {ef d c}
  \tuplet 3/2 {d c b_\markup\center-align{"♯11"} }
  \tuplet 3/2 {c b_\markup\center-align{"♯11"} a }
  \tuplet 3/2 {b_\markup\center-align{"♯11"} a g}
  \bar "||"
}

\include "include/treble-aligned.ly"
