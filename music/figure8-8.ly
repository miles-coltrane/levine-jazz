\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | r1 | r1 | r1 | ef:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r2 f''8 g af e | g e f c r ef d c | b g fs g e cs e g | \break
  cs, e g c b cs bf af | g4 s4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  ""1 | ""1 |
  "A7 - - - - - - - - - - - - - - - - - - -" 1 |
  "- - - - - - - - - - - - - - - -"1 |
}

\include "include/treble-lyrics.ly"
