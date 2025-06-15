\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | c:7
}
theLabel = \markup {
  "Joe Henderson 'No Me Escueca' bass part bar 5"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "minor 10th"
  a,4. \startGroup c'8 \stopGroup r8 a4 e8 |
  g8 a e c d4. c8
  \bar "||"
}

\include "include/interval-bass.ly"
