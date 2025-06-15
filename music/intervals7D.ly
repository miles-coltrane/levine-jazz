\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = bf
theSignature = 3/4
theChords = \chordmode {
  r4. | g2.:min7 | f2.:7
}
theLabel = \markup {
  "Woody Shaw 'Katrina Ballerina'"
}
theTreble = \relative {
  \partial 4. a'8~ \noBeam
  \once\override HorizontalBracketText.text = "perfect 5th"
  a8 \startGroup d,8 \stopGroup \bar "||"
  g8 d'8 r8 d4 c8 |
  d2~ \tuplet 3/2 { d8 c8 bf8 }
  \bar "||"
}

\include "include/interval.ly"
