\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = f
theSignature = 4/4
theChords = \chordmode {
  r8 | f1 | e2:m7.5- a2:7 | d1:min
}
theLabel = \markup {
  "Charlie Parker 'Confirmation'"
}
theTreble = \relative {
  \partial 8 c'8
  \bar "||"
  \once\override HorizontalBracketText.text = "minor 3rd"
  a'8 \startGroup c4 \stopGroup a8 bf a \tuplet 3/2 { e f fs } |
  g8 d' bf16 c bf g a8 cs,4 g'8 |
  r8 f4. r4 r8 a8
  \bar "||"
}

\include "include/interval.ly"
