\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c4.:maj7 c8:maj7 d8:min7 e4:min7 f8:maj7 | f4:maj7 e:min7 d:min7 c:maj7 |
}
theTreble = \relative {
  <b e>4. <b e>8 <c f>8 <d g>4 <e~ a~>8 |
  <e a>4 <d g> <c f> <b e>
  \bar "||"
}
theBass = \relative {
  c,4. c8 d8 e4 f8~ | f4 e d c|
  \bar "||"
}
theLyrics = \lyricmode {
  I " " II III IV III II I
}

\include "include/dual+lyrics.ly"
