\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:maj7 gf2:maj7 | a2:maj7 b4.:min7 e8:7
}
theLabel = \markup {
  "McCoy Tyner 'Aisha' last bar of bridge"
}
theTreble = \relative {
  g4~ \tuplet 3/2 {g8 g g} bf4~ \tuplet 3/2 { bf8 bf bf } |
  cs4 ~ \tuplet 3/2 { cs8 cs8 cs8 }
  \once\override HorizontalBracketText.text = "minor 7th"
  e4 \startGroup
  \tuplet 3/2 { r8 d'8 \stopGroup d,8 }
  \bar "||"
}

\include "include/interval.ly"
