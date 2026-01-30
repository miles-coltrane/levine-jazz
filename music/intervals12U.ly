\version "2.24.4"
\include "include/prologue.ly"

theTempo = 230
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r1 | f1:min7 | bf1:7
}
theLabel = \markup {
  "Sam Jones 'Del Sasser'"
}
theTreble = \relative {
  r8 bf4. bf4
  \once\override HorizontalBracketText.text = "octave"
  bf4 \startGroup |
  bf'1 \stopGroup |
  r8 c4. ef,4 f8 g8
  \bar "||"
}

\include "include/interval.ly"