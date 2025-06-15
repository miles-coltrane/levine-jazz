\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7 | ef:7 | bf:maj7
}
theLabel = \markup {
  "Thelonius Monk 'Misterioso'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "major 6th"
  f8 \startGroup d' \stopGroup g, ef' a, f' g, ef' |
  bf g' c, af' df, bf' c, af' |
  f, d' g, ef' a, f' g, ef'
  \bar "||"
}

\include "include/interval.ly"
