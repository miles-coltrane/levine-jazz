\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 3/4
theChords = \chordmode {
  g2.:sus7.9- | r | c:min7 | f:7 | bf:maj7.5+
}
theLabel = \markup {
  "Wayne Shorter 'Wild Flower' bar 11 of bridge"
}
theTreble = \relative {
  d''2.~ |
  d4. c8 bf a~ |
  a4. f8 d d'~ |
  d4. c8 bf a~ |
  a4. fs8
  \once\override HorizontalBracketText.text = "minor 9th"
  d \startGroup ef' \stopGroup
  \bar "||"
}

\include "include/interval.ly"
