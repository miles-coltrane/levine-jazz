\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r1 | d2:7 g4.:7 c8:min | r1
}
theLabel = \markup {
  "Duke Jordan 'Jordu'"
}
theTreble = \relative {
  r8
  \once\override HorizontalBracketText.text = "perfect 4th"
  g \startGroup c \stopGroup d ef f g ef \bar "||"
  fs2 f4. ef8 |
  r8 g, c d ef f g bf
  \bar "||"
}

\include "include/interval.ly"
