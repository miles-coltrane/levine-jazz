\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  g1:7.9- | c:min
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  f'4 g af b8 cs~ | cs1 | cs4 b8 gs8 cs4 b8 gs8 | cs4 b8 gs8~ gs2 | \break
  r2 e'8 cs8 b8 e8 | cs4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
}

\include "include/treble-lyrics.ly"
