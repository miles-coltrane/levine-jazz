\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = af
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:min7 | r1 | r1
}
theLabel = \markup {
  "Milt Jackson 'Bag's Groove'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "perfect 5th"
  \partial 4 f'4 \startGroup \bar "||"
  c'2. \stopGroup bf8 af8 |
  bf4 af8 f8 af4 f8 ef8 |
  f4. ef8~ ef2
  \bar "||"
}

\include "include/interval.ly"
