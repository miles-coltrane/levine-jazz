\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:min7 | df:11+
}
theLabel = \markup {
  "Billy Strayhorn 'Chelsea Bridge' bar 24"
}
theTreble = \relative {
  \tuplet 3/2 { bf'4 g bf}
  \tuplet 3/2 { d bf d } |
  \once\override HorizontalBracketText.text = "major 13th"
  g4 \startGroup
  bf,,8 \stopGroup c df ef \tuplet 3/2 { f8 gf af }
  \bar "||"
}

\include "include/interval.ly"
