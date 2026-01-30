\version "2.24.4"
\include "include/prologue.ly"

theTempo = 280
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 d2:7 | g2:maj7 bf:7 | ef1:maj7
}
theLabel = \markup {
  "John Coltrane 'Giant Steps'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "major 3rd"
  fs''2 \startGroup d \stopGroup |
  b2 g4. bf8~ |
  bf1
  \bar "||"
}

\include "include/interval.ly"
