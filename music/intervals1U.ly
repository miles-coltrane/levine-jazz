\version "2.24.4"
\include "include/prologue.ly"

theTempo = 115
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | ef1:7 | bf1:7
}
theLabel = \markup {
  "Thelonius Monk's 'Blue Monk'"
}
theTreble = {
  \once\override HorizontalBracketText.text = "minor 2nd"
  d'8 \startGroup ef' \stopGroup e' f'~f'2 |
  g'8 af' a' bf'~ bf'2 |
  f'8 g' f' e' ef' c' cs' d'
  \bar "||"
}

\include "include/interval.ly"
