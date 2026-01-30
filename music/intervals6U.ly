\version "2.24.4"
\include "include/prologue.ly"

theTempo = 220
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | c1:7
}
theLabel = \markup {
  "Joe Henderson 'Isotope'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "tritone"
  \partial 8 c'8 \startGroup \bar "||"
  fs8 \stopGroup g4 c8 r8 c,4.
  \bar "||"
}

\include "include/interval.ly"
