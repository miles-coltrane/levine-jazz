\version "2.24.4"
\include "include/prologue.ly"

theTempo = 110
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | r1
}
theLabel = \markup {
  "Joe Henderson 'No Me Escueca' bass part intro"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "major 9th"
  a,4. \startGroup b'8 \stopGroup r8 a4 e8 |
  a, e' b'4 a4. e8
  \bar "||"
}

\include "include/interval-bass.ly"
