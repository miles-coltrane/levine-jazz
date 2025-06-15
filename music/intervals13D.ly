\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:m7.5- d:alt | g:m7.5- c:alt | f:min7 bf:alt
}
theLabel = \markup {
  "Benny Golson 'I Remember Clifford' bar 18"
}
theTreble = \relative {
  ef''2~ ef8 f, bf c |
  df2~
  \once\override HorizontalBracketText.text = "minor 9th"
  df8 \startGroup c, \stopGroup ef f |
  g c, ef g fs4 b
  \bar "||"
}

\include "include/interval.ly"
