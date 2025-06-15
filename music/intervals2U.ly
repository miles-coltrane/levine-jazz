\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  R4. | ef1:maj~ | ef1:maj
}
theLabel = \markup {
  "Miles Davis 'Four'"
}
theTreble = {
  \once\override HorizontalBracketText.text = "major 2nd"
  \partial 4. bf'8 \startGroup c''8 \stopGroup d''8 \bar "||"
  r8 bf'8 c''8  d''8 r8 bf'8 c''8  d''8 |
  r8 f''8 ef''8 d''8 r8 bf'8 c''8  df''8
  \bar "||"
}

\include "include/interval.ly"
