\version "2.24.4"
\include "include/prologue.ly"

theTempo = 115
theKey = c
theSignature = 4/4
theChords = \chordmode {
  R4 | ef2:maj bf2:sus7 | a1:sus7 | d1:maj
}
theLabel = \markup {
  "Cedar Walton's 'Bolivia'"
}
theTreble = {
  \once\override HorizontalBracketText.text = "minor 2nd"
  \partial 4 ef''4 \startGroup \bar "||"
  d''2 \stopGroup bf'4. fs'8~ |
  fs'2. a'4 |
  cs''4 fs'8 a'8~ a'2
  \bar "||"
}

\include "include/interval.ly"
