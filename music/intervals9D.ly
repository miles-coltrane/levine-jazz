\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r8 | g2.:7 | r2.
}
theLabel = \markup {
  "Miles Davis 'All Blues'"
}
theTreble = \relative {
  \partial 8 d'8 \bar "||"
  b'2~
  \once\override HorizontalBracketText.text = "major 6th"
  b8 \startGroup d,8 \stopGroup |
  \tuplet 3/2 {b'8 c8 b8~ } b4~ b8 d,8
  \bar "||"
}

\include "include/interval.ly"
