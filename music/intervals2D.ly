\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = d
theSignature = 4/4
theChords = \chordmode {
  e1:min7 | a1:7 | d1:maj7
}
theLabel = \markup {
  "Miles Davis 'Tune-Up'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "major 2nd"
  a'2. \startGroup g4 \stopGroup |
  ds2 e2 |
  fs1
  \bar "||"
}

\include "include/interval.ly"
