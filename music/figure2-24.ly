\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:maj7 a:min7 | d:min7 g:7 |
}
theTreble = \relative {
  r4 <b d e g>2 <c e g a>4 |
  <f a c>4. <f~ a~ b~ d~>8 <f a b d>2
  \bar "||"
}
theBass = \relative {
  c2 a | d4. g,8~ g2
  \bar "||"
}
theLyrics = \lyricmode {
  I VI II V
}

\include "include/dual+lyrics.ly"
