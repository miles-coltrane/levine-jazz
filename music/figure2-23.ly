\version "2.24.4"
\include "include/prologue.ly"

% Young And Foolish, Cedar Walton
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a2:7 d:alt | g:7 c:7.9+ | f:7.9+ bf:7 | ef:7 af4.:7 df8:7 |
}
theTreble = \relative {
  <a' a'>4 f' d bf | g g' g8 f e f~ |
  f ef16 d16 df4 bf gf |
  ef ef' ef8 df c <ef, af df>
  \bar "||"
}
theBass = \relative {
  <g df' gf>2 <gf c f> |
  <f b e> <e bf' ef>4. <a~ ef'~ af~>8 |
  <a ef' af>2 <af d g> |
  <g df'>2 <gf c f>4. <f cf'>8 |
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  "V of"2 "V of"2 |
  "V of"2 "V"4 "of"4 |
  "V of"2 "V of"2 |
  "V of"2 "V of"4. "V"8 |
}

\include "include/dual+lyrics2.ly"
