\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. | c2:maj7 f2:7 | bf1:11+
}
theLabel = \markup {
  "Thelonius Monk 'Monk's Dream'"
}
theTreble = \relative {
  \once\override HorizontalBracketText.text = "major 3rd"
  \partial 4. c'8 \startGroup \tuplet 3/2 { e \stopGroup g a } \bar "||"
  b4 a8 c,8 g'8 c,4 e8 |
  r2 r8 c8 \tuplet 3/2 { e g a }
  \bar "||"
}

\include "include/interval.ly"
