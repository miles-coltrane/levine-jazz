\version "2.24.4"
\include "include/prologue.ly"

theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | e4:min7 a:7 d:min7 g:7 |
}
theTreble = \relative {
  a8 f' d c b4 <b e a>4 |
  <g d' g>4 <g cs g'> <f c' f> <f b f'>
  \bar "||"
}
theBass = \relative {
  d,2 g4 <g f'>4 |
  e4 a d, g |
  \bar "||"
}
theLyrics = \lyricmode {
  II V " " III VI II V
}

\include "include/dual+lyrics.ly"
