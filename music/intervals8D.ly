\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r4. | d1:min7.5- | f1:alt
}
theLabel = \markup {
  "Joe Henderson 'Serenity' second bar"
}
theTreble = \relative {
  \partial 4. g'8 af8 g'8~ |
  g2~ g8 f4 ef8~ |
  ef2~
  \once\override HorizontalBracketText.text = "minor 6th"
  ef8 \startGroup g, \stopGroup c d
  \bar "||"
}

\include "include/interval.ly"
