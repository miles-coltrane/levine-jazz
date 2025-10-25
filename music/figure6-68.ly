\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 | f:min7 | bf:7 |
  f:min7 | bf:7
}
theTreble = \relative {
  ef''4 c8 af8 f4 d'4 | r4 bf8 g8 ef8 c'8 af8 f8 | bf8 g8 ef4 c4 r4 | af'8 f8 d4 r4 bf4 | \break
  r2 g'8 ef8 c4 | af4 s2.
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
   "F-7 - - - - - -"2. "E♭Δ - - - - - -"2. ""8 \markup\center-column{"F minor" "triad"}4. |
   "C-7 - - - - -"2. ""4 |
   "B♭7 - - - - - - "1
   ""2 "A♭Δ - - - -"2.
}

\include "include/treble-lyrics.ly"
