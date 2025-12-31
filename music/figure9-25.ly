\version "2.24.4"
\include "include/prologue.ly"
\include "include/slash.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 d:7 | g:maj7 bf:7 | ef1:maj7 | a2:min7 d:7 |
  g:maj7 bf:7 |ef:maj7 fs:7 | b1:maj7 | f2:min7 bf:7 |
  ef1:maj7 | a2:min7 d:7 | g1:maj7 | cs2:min7 fs:7 |
  b1:maj7 | f2:min7 bf:7 | ef1:maj7 | cs2:min7 fs:7
}
theTreble = \relative {
  \startSlash
  b'4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 | \break
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 | \break
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 | \break
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4
  \stopSlash
  \bar "|."
}
theLyrics = \lyricmode {
  "B"2 "G"2 | ""2 "E♭"2 | ""1 | "G"1 |
  ""2 "E♭"2 | ""2 "B"2 | ""1 | "E♭"1 |
  ""1 | "G"1 | ""1 | "B"1 |
  ""1 | "E♭"1 | ""1 | "B"1
}

\include "include/treble-lyrics-aligned.ly"
