\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7 | r1 | a1:min7
}
theLabel = \markup {
  "Dizzy Gillespie 'Groovin' High'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "minor 3rd"
  bf'8 \startGroup g8 \stopGroup r4 r2 |
  bf8 g8 r4 r2 |
  r8 e a c b a gs e
  \bar "||"
}

\include "include/interval.ly"
