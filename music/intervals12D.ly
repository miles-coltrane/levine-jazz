\version "2.24.4"
\include "include/prologue.ly"

theTempo = 300
theKey = df
theSignature = 4/4
theChords = \chordmode {
  r1 | df1:maj7 | ef2:min7 af:7
}
theLabel = \markup {
  "Freddie Hubbard 'Philly Mignon'"
}
theTreble = \relative {
  r8 af' bf c df ef f gf \bar ".|:"
  \once\override HorizontalBracketText.text = "octave"
  af \startGroup af, \stopGroup r4 r2 |
  r8 af bf c df ef f gf |
  \bar "||"
}

\include "include/interval.ly"
