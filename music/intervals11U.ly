\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r4. | d1:min7.5- | g:alt
}
theLabel = \markup {
  "Joe Henderson 'Serenity'"
}
theTreble = \relative {
  \partial 4. g'8
  \once\override HorizontalBracketText.text = "major 7th"
  af8 \startGroup g'~ \stopGroup \bar "||"
  g2~ g8 f4 ef8~ |
  ef2~ ef8 g, c d
  \bar "||"
}

\include "include/interval.ly"
