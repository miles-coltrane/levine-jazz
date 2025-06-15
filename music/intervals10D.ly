\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  fs2:min7 b:alt | b:min7 e:7
}
theLabel = \markup {
  "Billy Strayhorn 'Chelsea Bridge' fourth bar of bridge"
}
theTreble = \relative {
  b'8 gs' e cs c g'4 ef8 |
  \once\override HorizontalBracketText.text = "minor 7th"
  d2. \startGroup e,8 \stopGroup fs
  \bar "||"
}

\include "include/interval.ly"
