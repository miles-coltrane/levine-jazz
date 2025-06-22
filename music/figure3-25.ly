\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | g:7
}
theTreble = \relative {
  g'8 a b c d e f g \bar "||"
  g,8 a b c d e f g \bar "||"
  \bar "||"
}
theLyrics = \lyricmode {
 "" "" "" \markup {\smaller "4th"} "" "" "" "" |
 "" "" "" \markup {\smaller "4th"} "" "" "" "" |
}
theBass = {
  <g c' f'>1 \bar "||"
  <g b d' f'>1 \bar "||"
  \bar "||"
}

\include "include/dual+lyrics3.ly"
