\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df1:11+.7+ | r | r  % TODO: using sharp-11 not sharp-4
}
theLabel = \markup {
  "Joe Henderson 'Inner Urge' bar 15"
}
theTreble = \relative {
  g4. g8 f c g' c |
  df4. f8 g8 c4.~
  \once\override HorizontalBracketText.text = "11th"
  c4. \startGroup g,8 \stopGroup f4
  \bar "||"
}

\include "include/interval.ly"
