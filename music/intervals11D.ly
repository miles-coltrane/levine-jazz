\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:maj7 | ef:7 | bf:maj7 | a:7.11+
}
theLabel = \markup {
  "Wayne Shorter 'Lady Day'"
}
theTreble = \relative {
  cs''1~ |
  cs2 r8
  \once\override HorizontalBracketText.text = "major 7th"
  c4 \startGroup df,8 \stopGroup |
  a'1~ | a2 r8 c4 df,8
  \bar "||"
}

\include "include/interval.ly"