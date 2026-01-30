\version "2.24.4"
\include "include/prologue.ly"

theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:maj7 e2:min7 | a2:min7 d2:7 | b2:min7 e2:7.9-
}
theLabel = \markup {
  "Duke Ellington 'Sophisticated Lady' 3rd bar of bridge"
}
theTreble = \relative {
  r8 d'4 b8 e4 b8 g'8~ |
  g8 e8 b'4 fs8 e'4 as,8 |
  \once\override HorizontalBracketText.text = "tritone"
  b4 \startGroup  f2. \stopGroup
  \bar "||"
}

\include "include/interval.ly"