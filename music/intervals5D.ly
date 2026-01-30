\version "2.24.4"
\include "include/prologue.ly"

theTempo = 280
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:alt | r1 | f1:maj7
}
theLabel = \markup {
  "Wayne Shorter 'ESP'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "perfect 4th"
  c''4. \startGroup g8~ \stopGroup  g4. d8~ |
  d4. g8~ g4 c8 g8~ |
  g4. d8~ d4. c'8
  \bar "||"
}

\include "include/interval.ly"
