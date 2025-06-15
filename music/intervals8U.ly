\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r8 | d2.:min7 | g:7 | d:min7
}
theLabel = \markup {
  "Woody Shaw 'In A Capricornian Way'"
}
theTreble = \relative {
  \partial 2 \partial 8
  \once\override HorizontalBracketText.text = "minor 6th"
  a'8 \startGroup \bar "||"
  f'2~ \stopGroup f8 a,8 |
  e'2 ~ e8 a,8 |
  f'2~ \tuplet 3/2 { f8 e8 d8  }
  \bar "||"
}

\include "include/interval.ly"
